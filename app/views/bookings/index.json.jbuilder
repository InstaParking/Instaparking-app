json.array!(@bookings) do |booking|
  json.extract! booking, :id, :booking_date, :start_date, :finish_date, :vehicle_plate, :amount_payable, :booking_status_id, :payment_type_id, :parking_place_id, :user_id
  json.url booking_url(booking, format: :json)
end
