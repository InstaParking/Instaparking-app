class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :booking_date
      t.datetime :start_date
      t.datetime :finish_date
      t.string :vehicle_plate
      t.decimal :amount_payable
      t.references :booking_status, index: true, foreign_key: true
      t.references :payment_type, index: true, foreign_key: true
      t.references :parking_place, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
