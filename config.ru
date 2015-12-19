# This file is used by Rack-based servers to start the application.

require 'rack-zippy'
use Rack::Zippy::AssetServer

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application