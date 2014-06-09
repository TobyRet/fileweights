require 'spec_helper'
require './lib/workshare_api'
require './lib/file_values'

describe 'Calculating file values from JSON' do 

	xit 'returns a list of file names' do

		request = WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files
		values = FileValues.new(request)

		expect(values.filenames.count).to eq(5)
		expect(values.filenames).to eq(["README", "rails_for_zombies_2_cheatsheets", "toby", "Get to Work in 5 Simple Steps", "Workshare for mobile"])

	end

	xit 'returns a list of formatted file sizes' do

		request = WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files
		values = FileValues.new(request)

		expect(values.filesizes.count).to eq(5)
		expect(values.filesizes[0]).to eq("0.0")

	end

	it 'returns a string for each file with formatted name and file size' do

		request = WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files
		values = FileValues.new(request)

		expect(values.all_files.length).to eq(9)
		expect(values.all_files[0]).to eq(["01 Dancehall State Of Mind.mp3", "6.0"])

	end
	
end