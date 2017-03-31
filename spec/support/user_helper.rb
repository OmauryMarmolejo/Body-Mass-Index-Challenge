module UserHelper
  def sign_up(user)
    visit "users/sign_up"
    fill_in 'Username', :with => user.username
    fill_in 'email', :with => user.email
    fill_in 'Password', :with => user.password
    submit_form
  end
  def submit_form
    find('input[name="commit"]').click
  end

end
