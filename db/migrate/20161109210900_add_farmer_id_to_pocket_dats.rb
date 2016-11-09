class AddFarmerIdToPocketDats < ActiveRecord::Migration
  def change
    add_column :pocket_dats, :farmer_id, :integer
  end
end
