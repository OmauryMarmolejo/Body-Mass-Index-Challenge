require 'rails_helper'

RSpec.describe UserController, type: :controller do
  describe "GET /users" do
    it "login as a new user" do
      login_user
      expect(response).to be_success
    end
  end
end
