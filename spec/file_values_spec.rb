require 'spec_helper'
require './lib/workshare_api'
require './lib/file_values'

describe 'Calculating file values from JSON' do 

	let(:request) { WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files }
	let(:values) { FileValues.new(request) }

	context 'parsing files' do

		it 'returns the name, file type and size of each file' do
			expect(values.parse[0]).to eq(["01 Dancehall State Of Mind", "mp3", "6311732" ])
			expect(values.all_files.length).to eq(9)
		end

	end

	context 'searching file types' do

		it 'filters Video files' do
			expect(values.video).to eq(['mp4'])
		end

	end

	context 'listing files' do

		it 'returns a string for each file with formatted name and file size' do
	
			expect(values.all_files.length).to eq(9)
			expect(values.all_files[0]).to eq(["01 Dancehall State Of Mind.mp3", "6.0", ])
	
		end

	end
	
end