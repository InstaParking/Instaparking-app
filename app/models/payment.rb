class Payment < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :payment_document
  belongs_to :booking
end
