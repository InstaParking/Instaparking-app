class CreateParkingPlaces < ActiveRecord::Migration
  def change
    create_table :parking_places do |t|
      t.text :description
      t.decimal :hourly_rate
      t.decimal :daily_rate
      t.decimal :weekly_rate
      t.decimal :monthly_rate
      t.integer :spaces_number
      t.string :address
      t.decimal :georeference_x
      t.decimal :georeference_y
      t.references :parking_type, index: true, foreign_key: true
      t.references :owner_type, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
