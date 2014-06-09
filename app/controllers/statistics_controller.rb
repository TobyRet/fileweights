require './lib/workshare_api.rb'
require './lib/file_values.rb'

class StatisticsController < ApplicationController

	def new
	end

	def create
		email = params.permit(:email)
		password = params.permit(:password)

		@request = WorkshareApi.new(email['email'], password['password']).request_files
		@values = FileValues.new(@request).all_files

		render 'show'
	end

	def show
	end

end
