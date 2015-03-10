class VotersController < ApplicationController

  def index
    @voters = Voter.all
    @user = current_user
    @local_voters = @user.voters_within_km(1)
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
    @relevant_visits = Visit.where(voter_id: @voter.id)
    @visit = Visit.new
  end

  def update
    voter = Voter.find(params[:id])
    relevant_visits = Visit.where(voter_id: @voter.id)
    voter.update voter_params
    redirect_to voter_path(voter)
  end

  private

  def voter_params
     params.require(:voter).permit(
      :email,
      :phone_number
      )
  end

end


