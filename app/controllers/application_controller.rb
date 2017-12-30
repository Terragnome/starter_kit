class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_constants
  
  has_mobile_fu false

  layout :layout_by_resource

  def set_constants
    meta_title()
    meta_keywords()
    meta_description()

    @app_title = APP_CONFIG['app_title']
    @app_url = APP_CONFIG['app_url']
  end

protected

  def meta_title(stub=nil)
    @meta_title = (!stub.present? or stub.downcase().to_sym() == :all) ? APP_CONFIG['app_title'] : "#{stub.to_s} | #{@meta_title_short}"
    @meta_title_short = APP_CONFIG['app_title_components'].collect{|x| x[0]}.join("")
  end

  def meta_keywords(tags=nil)
    kws = APP_CONFIG['app_keywords'].to_set
    kws += tags.to_set if tags.present?
    @meta_keywords = kws.to_a.sort.join(',')
  end

  def meta_description(desc=nil)
    @meta_description = desc.present? ? desc : APP_CONFIG['app_description']
  end

  def layout_by_resource
    devise_controller? ? "admin" : "application"
  end
end