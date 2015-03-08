class UsersController < ApplicationController
  before_action :authorize, except: [:create, :new]

  def show
    @user = User.find(params[:id])
  end

  def canvass
  end

  def edit
  end

  def update
  end

end
