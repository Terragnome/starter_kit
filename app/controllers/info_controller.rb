class InfoController < ApplicationController
  before_filter :meta_title_info

  def about
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def contact
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def privacy
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def terms
    respond_to do |format|
      format.html
      format.js
    end
  end

private

  def meta_title_info
    meta_title(params[:action].capitalize())
  end

end