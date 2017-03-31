require 'rails_helper'

RSpec.feature "User", :type => :feature do
  scenario "Create a new user" do
    sign_up FactoryGirl.build(:user)
    expect(page).to have_content('Logout')
  end
end
