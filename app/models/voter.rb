class Voter < ActiveRecord::Base
  has_many :visits

  # def make_addy
  #   @voter=Voter.find(params[:id])
  # end

  attr_accessor :street_address, :latitude, :longitude
  geocoded_by @voter_addy
  after_validation :geocode

  # def determine_age(dob)
  #   now = Time.now.utc.to_date
  #   now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  # end

# create method to determine if has a decision, then uncanvassed becomes false
end
