json.array!(@parking_places) do |parking_place|
  json.extract! parking_place, :id, :description, :hourly_rate, :daily_rate, :weekly_rate, :monthly_rate, :spaces_number, :address, :latitude, :longitude, :parking_type_id, :owner_type_id, :organization_id, :user_id
  json.url parking_place_url(parking_place, format: :json)
end
