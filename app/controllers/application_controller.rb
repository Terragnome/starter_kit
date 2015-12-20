class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_constants
  
  has_mobile_fu false

  layout :layout_by_resource

  def set_constants
    @app_title = APP_CONFIG['app_title']
    @app_url = APP_CONFIG['app_url']
    @app_title_short = APP_CONFIG['app_title_components'].collect{|x| x[0]}.join("")

    @asset_root = StarterKit::Application.config.asset_root
  end

  def set_title(stub)
    @app_title = stub.downcase().to_sym() == :all ? APP_CONFIG['app_title'] : "#{stub.to_s} | #{@app_title_short}"
  end

  protected

  def layout_by_resource
    devise_controller? ? "admin" : "application"
  end
end