json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :feedback_date, :comment, :score, :booking_id
  json.url feedback_url(feedback, format: :json)
end
