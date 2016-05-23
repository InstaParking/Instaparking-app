class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :payment_date
      t.datetime :start_date
      t.datetime :finish_date
      t.references :payment_type, index: true, foreign_key: true
      t.decimal :amount_paid
      t.references :payment_document_type, index: true, foreign_key: true
      t.string :document_number
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
