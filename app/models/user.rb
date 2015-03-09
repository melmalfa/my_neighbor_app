class User < ActiveRecord::Base
  has_secure_password
  has_many :visits
  has_many :voters, through: :visits

  attr_accessible :street_address, :latitude, :longitude
  geocoded_by :street_address
  after_validation :geocode
end



