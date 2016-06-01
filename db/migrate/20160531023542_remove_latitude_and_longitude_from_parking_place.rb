class RemoveLatitudeAndLongitudeFromParkingPlace < ActiveRecord::Migration
  def change
    remove_column :parking_places, :latitude, :float
    remove_column :parking_places, :longitude, :float
  end
end
