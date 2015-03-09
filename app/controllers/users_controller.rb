class UsersController < ApplicationController
  before_action :authorize, except: [:create, :new]

  include LocationHelper

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update user_params
    redirect_to user_path(user)
  end

  private

  def user_params
    params.require(:user).permit(
      :f_name,
      :l_name,
      :email,
      :phone_number,
      :street_address,
      :apt_number,
      :zip_code,
      :password
      )
  end

end
