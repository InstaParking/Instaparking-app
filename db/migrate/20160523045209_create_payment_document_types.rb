class CreatePaymentDocumentTypes < ActiveRecord::Migration
  def change
    create_table :payment_document_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
