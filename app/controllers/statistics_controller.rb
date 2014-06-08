require './lib/workshare_api.rb'

class StatisticsController < ApplicationController

	def new
	end

	def create
		e = params.permit(:email)
		p = params.permit(:password)

		auth = { email: e, password: p }
		response = HTTParty.get("http://my.workshare.com/api/open-v1.0/files.json", 
			basic_auth: auth )

		if response.success?
			flash[:notice] = "Hooray"
  			redirect_to 'show'
  		else
  			flash[:notice] = "Something bad happened"
  			render 'new'
  		end
	end

	def show
		#JSON.parse(response.body)
	end

end
