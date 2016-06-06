class ParkingPlace < ActiveRecord::Base
  belongs_to :parking_type
  belongs_to :owner_type
  belongs_to :organization
  belongs_to :user
  has_many :bookings
  validates :description, presence: true
  validates :spaces_number, presence: true
  validates :address, presence: true
  validates :organization, presence: true
  validates :owner_type, presence: true
  validates :parking_type, presence: true
  validates :user, presence: true
  
  geocoded_by :address, :latitude  => :georeference_x, :longitude => :georeference_y # ActiveRecord
  after_validation :geocode
  has_many   :bookings
end
