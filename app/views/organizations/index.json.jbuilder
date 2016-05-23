json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :ruc, :address, :user_id
  json.url organization_url(organization, format: :json)
end
