class AddLatitudeAndLongitudeToParkingPlace < ActiveRecord::Migration
  def change
    add_column :parking_places, :latitude, :float
    add_column :parking_places, :longitude, :float
  end
end
