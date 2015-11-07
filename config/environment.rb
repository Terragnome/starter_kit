# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
StarterKit::Application.initialize!

APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")
ASSET_ROOT = "https://googledrive.com/host/0BwCD42LpcEbxY2xDODlRLUEzbEE"