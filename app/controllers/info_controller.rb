class InfoController < ApplicationController
  before_filter :set_info_title

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

  def set_info_title
    set_title(params[:action].capitalize())
  end

end