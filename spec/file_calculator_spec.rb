require 'spec_helper'
require './lib/workshare_api'
require './lib/file_calculator'

describe 'Calculating file weights' do 

	it 'returns a list of file names' do

		request = WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files
		calculator = FileCalculator.new(request)

		expect(calculator.filenames.count).to eq(5)
		expect(calculator.filenames).to eq(["README", "rails_for_zombies_2_cheatsheets", "toby", "Get to Work in 5 Simple Steps", "Workshare for mobile"])

	end
	
end