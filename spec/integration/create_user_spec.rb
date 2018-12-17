require 'spec_helper'
require 'rails_helper'

feature 'create New User' do
    scenario "error with missing fields" do
        visit '/users/new'
        expect(page).to have_content('New User')

        #Error when not all fields are filled in
        fill_in 'First name', :with=>'Abeer'
        fill_in 'Last name', :with=>'Eltanawy'
        click_button 'Create User'
        expect(page).to have_content('7 errors')

    end
end
