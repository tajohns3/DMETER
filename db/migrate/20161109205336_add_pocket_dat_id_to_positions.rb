class AddPocketDatIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :pocket_dat_id, :integer
  end
end
