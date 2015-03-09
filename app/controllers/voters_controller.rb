class VotersController < ApplicationController
  include LocationHelper

  def index
    @voters = Voter.all
  end

  def show
    @voter = Voter.find(params[:id])
      @relevant_visits = Visit.where(voter_id: @voter.id)
    # @relevant_visit = Visit.where voter_id matches this voter's voter_id
  end

  # User.where(weekly_subscriber: true).find_each do |user|
  # NewsMailer.weekly(user).deliver_now

  def edit
    @voter = Voter.find(params[:id])
  end

  def update
    voter = Voter.find(params[:id])
    voter.update voter_params
    redirect_to voter_path(voter)
  end

  private

  def voter_params
     params.require(:voter).permit(
      # :f_name
      # :l_name
      :email,
      :phone_number
      # :apt_number
      # :latitude
      # :longitude
      # :zip_code, :default => 33460
      # :party
      # :birthdate
      # :race
      # :gender
      # :reg_date
      # :last_vote_date
      )
  end




end


