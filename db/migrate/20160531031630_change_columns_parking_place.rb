class ChangeColumnsParkingPlace < ActiveRecord::Migration
  def change
    change_table :parking_places do |t|
      t.change :georeference_x, :float
      t.change :georeference_y, :float
    end
  end
end
