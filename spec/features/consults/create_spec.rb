require 'rails_helper'

RSpec.feature "Consult", :type => :feature do
  scenario "Create a new consult" do
    sign_up FactoryGirl.build(:user)
    create_consult FactoryGirl.build(:consult)
    expect(page).to have_content('24.69')
  end
end
