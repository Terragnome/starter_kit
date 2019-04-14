class Oauth2Controller < ApplicationController
	def callback
		redirect_to "http://192.168.99.112:5000/oauth2callback?#{params.to_query}"
	end
end