class User < ActiveRecord::Base
  has_secure_password
  has_many :visits
  has_many :voters, through: :visits

  geocoded_by :address
  # after_validation :geocode
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def address
    "#{street_address}, #{zip_code}"
  end

  def voters_within_km(distance)
    Voter.all.select do |voter|
      # distance_to calculates the distance from user to voter
      voter.latitude.present? && voter.longitude.present? && (self.distance_to(voter) <= distance)
      # voter.latitude.present? && voter.longitude.present? && (distance_to(self) <= distance)
    end
  end
end



