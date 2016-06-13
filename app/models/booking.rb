class Booking < ActiveRecord::Base
  belongs_to :booking_status
  belongs_to :payment_type
  belongs_to :parking_place
  belongs_to :user
  
  validates :booking_date, presence: true
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :vehicle_plate, presence: true
  validates :amount_payable, presence: true
  validates :payment_type_id, presence: true
  validates :parking_place_id, presence: true
  validates :user_id, presence: true
end
