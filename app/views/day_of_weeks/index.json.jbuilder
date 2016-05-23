json.array!(@day_of_weeks) do |day_of_week|
  json.extract! day_of_week, :id, :name, :mnemonic
  json.url day_of_week_url(day_of_week, format: :json)
end
