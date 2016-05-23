class AvailabilityParkingPlace < ActiveRecord::Base
  belongs_to :day_of_week
  belongs_to :parking_place
end
