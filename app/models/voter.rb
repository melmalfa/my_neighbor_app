class Voter < ActiveRecord::Base
  has_many :visits

  # def determine_age(dob)
  #   now = Time.now.utc.to_date
  #   now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  # end

  geocoded_by :address
  after_validation :geocode

  def address
    "#{street_address}, #{zip_code}"
  end

  # def voters_within_km(distance)
  #   Voter.all.select do |voter|
  #     # voter.latitude.present? && voter.longitude.present? && (distance_to(voter) <= distance)
  #     voter.latitude.present? && voter.longitude.present? && (distance_to(user) <= distance)
  #   end
  # end

end
