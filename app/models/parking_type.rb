class ParkingType < ActiveRecord::Base
  has_many :parking_place
end
