class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # We can call these methods from other controllers

  # set the current_user instance variable if we have a session
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # This allows us to call curernt_user in our views
  helper_method :current_user

  # Allows us to check for a logged in user
  def authorize
    redirect_to '/login' unless current_user
  end

  # geocoded_by :address
  # after_validation :geocode

  # def address
  #   "#{street_address}, #{zip_code}"
  # end

  def voters_within_km(distance)
    Voter.all.select do |voter|
      # voter.latitude.present? && voter.longitude.present? && (distance_to(voter) <= distance)
      voter.latitude.present? && voter.longitude.present? && (distance_to(current_user) <= distance)
    end
  end

end
