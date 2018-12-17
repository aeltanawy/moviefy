require 'spec_helper'
require 'rails_helper'

feature 'Login user' do
    scenario "error with incorrect fields" do
        visit '/sessions/new'
        expect(page).to have_content('Log in')

        fill_in 'Email', :with=>'abeer@gmail.com'
        fill_in 'Password', :with=>'hithere'
        click_button 'Log in'
        expect(page).to have_content('Invalid email/password combination')

    end
end
