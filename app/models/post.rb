require 'action_view'

class Post < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  belongs_to :user

  has_many :post_photos
  has_many :photos, :through=>:post_photos

  has_many :counters, :as=>:countable

  before_validation :set_user
  before_validation :set_posted_at
  before_validation :set_slug
  before_validation :set_url

  scope :active, -> { where(active:true).order(:posted_at=>:desc, :id=>:desc) }
  
  acts_as_taggable

  @@num_related = 12

  @@exclude_related_tags = [
    "gear",
    "beginner",
    "intermediate",
    "expert"
  ]

  def is_guide
    self.tags.collect{|x|x.name}.include?("guides")
  end

  def related
    related_tags = self.tag_names - @@exclude_related_tags
    if is_guide
      results = Post.active.tagged_with(related_tags, :on=>:tags, :any=>true).tagged_with("guides", :exclude=>true).take(@@num_related)
    else
      results = Post.active.tagged_with(related_tags, :on=>:tags, :any=>true).tagged_with("guides").take(@@num_related)
    end
    results
  end

  def display_byline
    "#{user.nickname} | #{ago.capitalize}"
  end

  def display_summary
    # begin
    s = "#{body.gsub("\n", " ")}\n"
    s = strip_tags(s)
    s = s.scan(/[^\.!?]+[\.!?]+/).map(&:strip)[0..1].join("\n\n")
    # rescue
    #   s = summary
    # end
    s
  end

  def tag_names
    self.tags.collect{|x| x.name}
  end

  def facebook_count
    begin
      self.counters.select{|x| x.key=='facebook'}.first.counter
    rescue
      0
    end
  end

  def twitter_count
    begin
      self.counters.select{|x| x.key=='twitter'}.first.counter
    rescue
      0
    end
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
    s = s.gsub(/[^a-zA-Z0-9\-\_ ]/, "")
    s = s.gsub(/ +/, "-").downcase()
    s
  end

  def display_call_to_action
    call_to_action = [nil, ""].include?(self.call_to_action) ? self.url != "" ? "Explore" : "Learn More" : self.call_to_action
    call_to_action = "#{call_to_action} $#{cost}" if cost>0
    call_to_action
  end

  private

  def set_url
    self.url = "http://www.amazon.com/dp/#{self.asin}/?tag=#{Affiliate::AMAZON_ID}" if !self.asin.blank?
  end

  def set_user
    self.user = User.first if not self.user
  end

  def set_posted_at
    self.posted_at = Time.now if self.active && self.posted_at.blank?
  end

  def set_slug
    self.slug = self.display_slug
  end

end