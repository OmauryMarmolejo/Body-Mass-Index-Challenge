module UserControllerHelper
  #def login_user
      #@request.env["devise.mapping"] = Devise.mappings[:user]
      #sign_in FactoryGirl.create(:user)
  #end
  #
  def login_user
    user = FactoryGirl.create(:user)
    request.session[:user_id] = user.id
  end
end
