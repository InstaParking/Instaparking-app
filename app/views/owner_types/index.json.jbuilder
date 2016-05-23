json.array!(@owner_types) do |owner_type|
  json.extract! owner_type, :id, :name, :description
  json.url owner_type_url(owner_type, format: :json)
end
