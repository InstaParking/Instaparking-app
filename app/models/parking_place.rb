class ParkingPlace < ActiveRecord::Base
  belongs_to :parking_type
  belongs_to :owner_type
  belongs_to :organization
  belongs_to :user
end
