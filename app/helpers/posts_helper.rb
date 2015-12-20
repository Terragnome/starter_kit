module PostsHelper
  include ApplicationHelper
  include ActsAsTaggableOn::TagsHelper
  include ActionView::Helpers::NumberHelper

  def format_for_counter(num=nil)
    return "" if [nil, 0, "0", ""].include?(num)
    return "#{number_with_delimiter(num, :delimiter=>',')}" if num < 99999
    return "#{number_with_delimiter(num/1000, :delimiter=>',').to_i}K" if num < 999999
    return "#{number_with_delimiter(num/1000000, :delimiter=>',').to_i}M" if num < 999999999
    return "1B+" if num >= 1000000000
    return ""
  end

  def full_post_path(post, **kwargs)
    post_path(post.display_slug, **kwargs)
  end

  def full_post_url(post, **kwargs)
    post_url(post.display_slug, **kwargs)
  end

  def seo_feed_path(tags, **kwargs)
    tags = seo_feed_params(tags)
    return latest_path(**kwargs) if tags == :all or tags.length == 0
    return feed_path(:tag=>tags.first, **kwargs) if tags.length == 1
    tags.sort!{|a,b| a<=>b}
    return tag_feed_path(:tags=>tags.join(','), **kwargs)
  end

  def seo_feed_url(tags, **kwargs)
    tags = seo_feed_params(tags)
    return latest_url(**kwargs) if tags == :all or tags.length == 0
    return feed_url(:tag=>tags.first, **kwargs) if tags.length == 1
    tags.sort!{|a,b| a<=>b}
    return tag_feed_url(:tags=>tags.join(','), **kwargs)
  end

  private

  def seo_feed_params(parms)
    begin
      parms = parms.split(",").flatten
    rescue
      parms = :all
    end
    parms
  end

end