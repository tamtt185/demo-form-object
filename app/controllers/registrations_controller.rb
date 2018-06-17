class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new registration_params
    if @registration.save
      flash[:success] = "create success!"
      redirect_to root_path
    else
      flash[:danger] = "create fail!"
      render :new
    end
  end

  private

  def registration_params
    params.require(:registration).permit :company_name, :company_address,
      :email, :user_name, :password
  end
end
