json.array!(@availability_parking_places) do |availability_parking_place|
  json.extract! availability_parking_place, :id, :day_of_week_id, :start_date, :finish_date, :hourly_rate, :daily_rate, :weekly_rate, :monthly_rate, :spaces_number, :parking_place_id
  json.url availability_parking_place_url(availability_parking_place, format: :json)
end
