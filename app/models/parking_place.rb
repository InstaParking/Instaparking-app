class ParkingPlace < ActiveRecord::Base
  belongs_to :parking_type
  belongs_to :owner_type
  belongs_to :organization
  belongs_to :user
  has_many :bookings
  
  geocoded_by :address, :latitude  => :georeference_x, :longitude => :georeference_y # ActiveRecord
  after_validation :geocode
end
