module PostsHelper
  include ActsAsTaggableOn::TagsHelper
  include ActionView::Helpers::NumberHelper

  def app_title(stub)
    wiselinks_title( stub.downcase().to_sym() == :all ? @app_title : "#{stub} | #{@app_title_short}" )
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
    post_url(post.id, **kwargs)
  end
end