require 'rails_helper'

describe "POST #create " do
  context "with valid attributes" do
    it "create a new user" do
      login_user
      expect(User.count).to eq(1)
      expect(request.session[:user_id]).not_to be_nil
    end
  end
end
