module ApplicationHelper
  def meta_title(title)
    wiselinks_title(title)
  end 
  
  def meta_keywords(kws)
    content_for :meta_keywords, kws
  end

  def meta_description(desc)
    content_for :meta_description, desc
  end

  def site_name()
    @meta_title
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