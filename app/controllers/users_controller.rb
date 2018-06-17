class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.build_company
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Update success"
      redirect_to root_path
    else
      flash[:danger] = "Update failed"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :password, company_attributes:
      [:id, :name, :address, :_destroy]
  end
end
