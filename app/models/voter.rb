class Voter < ActiveRecord::Base
  has_many :visits

  # def determine_age(dob)
  #   now = Time.now.utc.to_date
  #   now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  # end

# create method to determine if has a decision, then uncanvassed becomes false
end
