class VotersController < ApplicationController
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
  end

  def update
  end

end
