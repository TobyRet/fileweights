require 'spec_helper'
require './lib/workshare_api'
require './lib/file_values'

describe 'Calculating file values from JSON' do 

	let(:request) { WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files }
	let(:values) { FileValues.new(request) }

	context 'listing files' do

		it 'returns a string for each file with formatted name and file size' do
	
			expect(values.all_files.length).to eq(9)
			expect(values.all_files[0]).to eq(["01 Dancehall State Of Mind.mp3", "6.0"])
	
		end

	end

	context 'calculating file weights' do

		it 'can calculate the frequency of file types' do
		end

		it 'can calculate the gravity for each file' do
		end

		it 'can calculate the total gravity for all files' do
		end

	end
	
end