require 'spec_helper'
require './lib/workshare_api'

feature 'External request' do 
	
	it 'queries files for a user' do
		request = WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files
		
		expect(request["files"][0]["creator"]["name"]).to eq("Toby Retallick")
	end
	
end