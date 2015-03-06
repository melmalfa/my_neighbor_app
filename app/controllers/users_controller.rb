class UsersController < ApplicationController
  before_action :authorize, except: [:create, :new]

  def show
  end

  def edit
  end

  def update
  end

end
