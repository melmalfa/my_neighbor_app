class User < ActiveRecord::Base
  has_secure_password
  has_many :visits
  has_many :voters, through: :visits

  geocoded_by :address
  after_validation :geocode

  def address
    "#{street_address}, #{zip_code}"
  end

  def voters_within_km(distance)
    Voter.all.select do |voter|
      voter.latitude.present? && voter.longitude.present? && (distance_to(voter) <= distance)
    end
  end
end



