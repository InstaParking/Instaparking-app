json.array!(@payment_document_types) do |payment_document_type|
  json.extract! payment_document_type, :id, :name, :description
  json.url payment_document_type_url(payment_document_type, format: :json)
end
