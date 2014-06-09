require 'spec_helper'

feature 'Signing in' do

	scenario 'signing in via form' do 

		#user = FactoryGirl.create(:user)

		visit '/'
		fill_in 'Email', with: 'toby.retallick@gmail.com'
		fill_in 'Password', with: ENV['WORKSHARE_PASS']
		click_button 'Sign in'

		expect(page).to have_content 'My files'

	end

end
