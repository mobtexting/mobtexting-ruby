require "mobtexting_sms/version"
require 'open-uri'

module MobtextingSms
	class Error < StandardError; end

	class Client
		def initialize(access_token)
			@access_token = access_token
		end
		def send(to, from, body, service)
			api_endpoint = 'https://portal.mobtexting.com/api/v2/'
			url = api_endpoint + 'sms/send?access_token=' + @access_token + '&message=' \
			    + body  + '&sender='+ from + '&to=' + to + '&service=' + service

			return open(url).read
		end
	end

end