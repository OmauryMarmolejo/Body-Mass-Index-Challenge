require 'rails_helper'
describe "POST #create consult " do
  context "with valid attributes" do
    it "create a new consult" do
      login_user
      byebug
      consult_params = FactoryGirl.create(:consult)
      expect { post :create, consult_params  }.to change(Consult, :count).by(1)
    end
  end
end
