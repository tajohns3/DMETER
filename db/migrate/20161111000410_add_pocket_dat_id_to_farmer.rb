class AddPocketDatIdToFarmer < ActiveRecord::Migration
  def change
    add_column :farmers, :pocket_dat_id, :integer
  end
end
