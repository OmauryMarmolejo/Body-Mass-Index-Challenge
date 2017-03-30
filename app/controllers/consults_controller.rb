class ConsultsController < ApplicationController
include ConsultsHelper
#before_action :find_consults, only: [:edit, :update, :show, :delete]
before_action :authenticate_user!
  def index
    @consults = current_user.consult
    @consult= Consult.new
  end

  def new
    @consult = current_user.consult.build
  end

  def show
    @consult = Consult.find(params[:id])
  end

  def create
    @consult = current_user.consult.new(consult_params)
    calculate
    define_category
    if @consult.save
      redirect_to root_path
      else
      render 'new'
    end
  end
  def update
    @consult = Consult.find(params[:id])
    @consult.update(consult_params)
    redirec_to root_path
  end

  def edit
    @consult = Consult.find(params[:id])
  end

  def destroy
    @consult = Consult.find(params[:id])
    @consult.destroy
    redirect_to root_path
  end

end

