module ConsultsHelper
  def consult_params
    params.require(:consult).permit(:height, :mass, :body_mass, :user_id)
  end
end
