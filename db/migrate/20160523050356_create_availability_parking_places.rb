class CreateAvailabilityParkingPlaces < ActiveRecord::Migration
  def change
    create_table :availability_parking_places do |t|
      t.references :day_of_week, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :finish_date
      t.decimal :hourly_rate
      t.decimal :daily_rate
      t.decimal :weekly_rate
      t.decimal :monthly_rate
      t.integer :spaces_number
      t.references :parking_place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
