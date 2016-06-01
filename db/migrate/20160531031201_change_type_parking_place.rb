class ChangeTypeParkingPlace < ActiveRecord::Migration
  def change
  end
  def up
    change_table :parking_place do |t|
      t.change :georeference_x, :decimal
      t.change :georeference_y, :decimal
    end
  end

  def down
    change_table :parking_place do |t|
      t.change :georeference_x, :float
      t.change :georeference_y, :float
    end
  end
end
