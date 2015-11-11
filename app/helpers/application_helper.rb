module ApplicationHelper
  def meta_keywords(tags = nil)
    kws = APP_CONFIG['app_keywords'].to_set

    if tags.present?
      kws += tags.to_set if tags.present?
      content_for :meta_keywords, kws.to_a.sort.join(', ')
    else
      content_for?(:meta_keywords) ? content_for(:meta_keywords) : kws.to_a.sort.join(', ')
    end
  end

  def meta_description(desc = nil)
    if desc.present?
      content_for :meta_description, desc
    else
      content_for?(:meta_description) ? content_for(:meta_description) : APP_CONFIG['app_description']
    end
  end

  def site_name()
    @app_title
  end

  def site_url()
    @app_url
  end    

  def site_link(link_text=nil)
    link_to(link_text || site_name, site_url())
  end

  def site_email_link(stub, link_text=nil)
    addr = "#{stub}@#{site_url()}"
    mail_to(addr, link_text || addr )
  end

  def contact_email_link
    site_email_link("contact")
  end
end