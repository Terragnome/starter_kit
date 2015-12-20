class InfoController < ApplicationController
  def about
    set_title("About")

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def contact
    set_title("Contact")

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def privacy
    set_title("Privacy")

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def terms
    set_title("Terms")
    
    respond_to do |format|
      format.html
      format.js
    end
  end
end