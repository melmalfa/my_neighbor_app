class VisitsController < ApplicationController

  def create
    voter = Voter.find params[:voter_id]

    visit = Visit.new(visit_params)
    visit.user  = current_user
    visit.voter = voter

    if visit.save
      redirect_to voter_path(voter)
    else
      redirect_to edit_voter_path(voter)
    end
  end

  private

  def visit_params
    params.require(:visit).permit(
      :notes,
      :vote_decision
    )
  end

end
