require './lib/workshare_api.rb'

class StatisticsController < ApplicationController

	def new
	end

	def create
		@email = params.permit(:email)
		@password = params.permit(:password)

		auth = { email: @email, password: @password }
		response = HTTParty.get("http://my.workshare.com/api/open-v1.0/files.json", 
			basic_auth: auth )

  		render 'show'

	end

	def show
		#JSON.parse(response.body)
	end

end
