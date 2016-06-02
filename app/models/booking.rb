class Booking < ActiveRecord::Base
  belongs_to :booking_status
  belongs_to :payment_type
  belongs_to :parking_place
  belongs_to :user
  
  
 
  
end
