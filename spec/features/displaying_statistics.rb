require 'spec_helper'

feature 'Displaying statistics for user' do 

	context 'File list' do

		#let(:request) { WorkshareApi.new('toby.retallick@gmail.com', ENV['WORKSHARE_PASS'] ).request_files }
		#let(:values) { FileValues.new(request) }

		before do
  			visit '/'
			fill_in 'Email', with: 'toby.retallick@gmail.com'
			fill_in 'Password', with: ENV['WORKSHARE_PASS']
			click_button 'Sign in'
  		end

		it 'shows the name and size of each file' do
			expect(page).to have_content('01 Dancehall State Of Mind.mp3')
		end

	end
	
end