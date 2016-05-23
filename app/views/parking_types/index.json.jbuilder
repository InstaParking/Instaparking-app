json.array!(@parking_types) do |parking_type|
  json.extract! parking_type, :id, :name, :description
  json.url parking_type_url(parking_type, format: :json)
end
