module PostsHelper
  include ActsAsTaggableOn::TagsHelper
  include ActionView::Helpers::NumberHelper

  def app_title(stub)
    wiselinks_title( stub.downcase().to_sym() == :all ? @app_title : "#{stub.to_s.capitalize} | #{@app_title_short}" )
  end 

  def feed_title(tags)
    if not tags or tags == :all
      app_title(:all)
    else
      tags.count == 1 ? app_title(tags.first) : app_title('Collection')
    end
  end

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
    return latest_path if tags == :all
    return feed_path(:tag=>tags.first) if tags.length == 1
    return tag_feed_path(:tags=>tags.join(','))
  end

  def seo_feed_url(tags, **kwargs)
    tags = seo_feed_params(tags)
    return latest_url if tags == :all
    return feed_url(:tag=>tags.first) if tags.length == 1
    return tag_feed_url(:tags=>tags.join(','))
  end

  private

  def seo_feed_params(parms)
    begin
      parms = parms.split(",")
    rescue
      parms = :all
    end

    parms
  end

end