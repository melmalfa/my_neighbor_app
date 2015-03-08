# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # render the login form
  end

  def create
    user = User.find_by({email: params[:email]})
    # if we found a user with that email
    # and they provided the correct password
    if user && user.authenticate(params[:password])
      # store their id in session
      session[:user_id] = user.id
      redirect_to user_path
      # redirect_to "/user/"+session[:user_id]+"/canvass"
      # user_path(canvass)
    else
      # rerender the form
      render :new
    end
  end

  def destroy
    # remove the user_id from session
    session[:user_id] = nil
    redirect_to '/login'
  end
end
