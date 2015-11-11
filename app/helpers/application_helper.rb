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

  def site_link()
    link_to("The Pursuit of Hobbiness", "pursuitofhobbiness.com")
  end

  def site_email(stub, link_text=nil)
    addr = "#{stub}@pursuitofhobbiness.com"
    mail_to(addr, link_text || addr )
  end

  def contact_email
    site_email("contact")
  end
end