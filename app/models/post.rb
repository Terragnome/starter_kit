class Post < ActiveRecord::Base
  belongs_to :user

  has_many :post_photos
  has_many :photos, :through=>:post_photos

  before_validation :set_posted_at

  scope :active, -> { where(active:true).order(:posted_at=>:desc, :id=>:desc) }
  
  acts_as_taggable

  def summary
    s = body
    summary_len = 120
    s = s.length > summary_len ? "#{s[0..summary_len]}..." : s
    return s
  end

  def previous
    @previous ||= Post.active.where(['id<?', id]).last
  end

  def next
    @next ||= Post.active.where(['id>?', id]).first
  end

  def date
    posted_at ? posted_at.to_date : created_at.to_date
  end

  def ago
    days_ago = Time.now.to_date.mjd - posted_at.to_date.mjd

    return "today" if days_ago < 1
    return "yesterday" if days_ago == 1

    if days_ago < 7
      return "#{days_ago} days ago"
    end

    if days_ago < 30
      weeks_ago = (days_ago/7).floor
      return "#{weeks_ago} #{weeks_ago == 1 ? "week" : "weeks"} ago"
    end

    if days_ago < 365
      months_ago = (days_ago/30).floor
      return "#{months_ago} #{months_ago == 1 ? "month" : "months"} ago"
    end

    return "over a year ago"
  end

  def cover_photo
    photos.first if photos
  end

  def display_time
    date.strftime("%A, %m/%d/%y")
  end

  def display_slug
    s = self.title
    s = s.gsub(/ +/, "-")
    s = s.gsub(/[^a-zA-Z0-9\-\_]/, "")
    s
  end

  def display_call_to_action
    call_to_action = self.call_to_action != "" ? self.call_to_action : "Explore"
    call_to_action = "#{call_to_action} $#{cost}" if cost>0
    call_to_action
  end

  private

  def set_posted_at
    self.posted_at = Time.now if self.active && self.posted_at.blank?
  end

end