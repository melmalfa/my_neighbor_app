class VisitsController < ApplicationController
  def create
    @visit = Visit.create(visit_params)
    @visit.voter_id = params[:voter_id]
    @visit.save
    redirect_to voter_path(@visit.voter_id)
  end

  private

  def visit_params
  end

end
