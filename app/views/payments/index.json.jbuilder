json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_date, :start_date, :finish_date, :payment_type_id, :amount_paid, :payment_document_id, :document_number, :booking_id
  json.url payment_url(payment, format: :json)
end
