module ConsultsHelper
  def consult_params
    params.require(:consult).permit(:height, :mass, :body_mass, :user_id)
  end

  def calculate
    @height = consult_params[:height].to_f
    @mass = consult_params[:mass].to_f
    @consult.body_mass =  (@mass)/((@height/100)*(@height/100))
    @consult.save
  end
end

