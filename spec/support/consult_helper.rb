module UserHelper
  def create_consult(consult)
    fill_in 'Height (cm)', :with => consult.height
    fill_in 'Weight (kg)', :with => consult.mass
    submit_form
  end
  def submit_form
    find('input[name="commit"]').click
  end

end
