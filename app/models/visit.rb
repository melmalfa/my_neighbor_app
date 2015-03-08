class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :voter
end


# User.find(4).visits.first.voter
# User.find(:id).where(visit.vote_decision) => nil
