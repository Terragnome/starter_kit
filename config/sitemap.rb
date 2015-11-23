# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://#{APP_CONFIG['app_url']}"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  Post.active.find_each do |post|
    add post_path(post.display_slug), :lastmod => post.posted_at
  end

  tags = Post.tag_counts

  tags.each do |tag|
    add feed_path(tag.name), :changefreq => 'weekly'
  end

  tags.length.times do |i|
    break if i>3

    tags.permutation(i).each do |combo|
      sorted_combo = combo.sort{|a,b| a.name <=> b.name }.join(',')
      add tag_feed_path(:tags=>sorted_combo), :changefreq => 'weekly'
    end
  end
end

SitemapGenerator::Sitemap.ping_search_engines