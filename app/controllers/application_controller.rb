class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_constants
  
  has_mobile_fu false

  def set_constants
    @app_title = APP_CONFIG['app_title']
    @app_title_components = APP_CONFIG['app_title_components']
    @app_title_short = @app_title_components.collect{|x| x[0]}.join("")

    @asset_root = StarterKit::Application.config.asset_root

    @primary_user=User.first
  end
end