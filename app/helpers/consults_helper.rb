module ConsultsHelper
  def consult_params
    params.require(:consult).permit(:height, :mass, :body_mass, :category, :user_id)
  end

  def calculate
    @height = consult_params[:height].to_f
    @mass = consult_params[:mass].to_f
    @consult.body_mass =  (@mass)/((@height/100)*(@height/100))
  end

  def define_category
    if @consult.body_mass < 18.5
      @consult.category = "Underweight"
    elsif @consult.body_mass > 18.5 and @consult.body_mass < 25
      @consult.category = "Normal"
    elsif @consult.body_mass > 25 and @consult.body_mass < 30
      @consult.category = "Overweight"
    elsif @consult.body_mass > 30 and @consult.body_mass < 35
      @consult.category = "Obese Class I"
    elsif @consult.body_mass > 35 and @consult.body_mass < 40
      @consult.category = "Obese Class II"
    elsif @consult.body_mass > 40
      @consult.category = "Obese Class III"
    end
  end
end

