xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @app_title
    xml.description @app_description
    xml.link feed_url

    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.body
        xml.link post_url(post.id, :display_slug=>post.display_slug)
        xml.guid post_url(post.id, :display_slug=>post.display_slug)
      end
    end
  end
end