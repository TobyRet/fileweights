require 'httparty'


class Workshare
	include HTTParty
	
	def initialize(u, p)
		@auth = { username: u, password: p }
	end

	def request_files
		response = HTTParty.get("http://my.workshare.com/api/open-v1.0/files.json", 
			basic_auth: @auth,
			api_key: 'b1ef1764-ac1e')
		JSON.parse(response.body)
	end

end

