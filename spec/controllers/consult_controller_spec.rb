require 'rails_helper'

RSpec.describe ConsultController, type: :controller do
  describe "GET #index" do
    it "show a list of all consults" do
      get :index
      expect(response).to be_success
    end
  end
end
