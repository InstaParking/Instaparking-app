json.array!(@organization_members) do |organization_member|
  json.extract! organization_member, :id, :member_type_id, :organization_id, :user_id
  json.url organization_member_url(organization_member, format: :json)
end
