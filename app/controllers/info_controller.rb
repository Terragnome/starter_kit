class InfoController < ApplicationController
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
end