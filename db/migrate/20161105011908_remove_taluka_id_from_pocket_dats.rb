class RemoveTalukaIdFromPocketDats < ActiveRecord::Migration
  def change
    remove_column :pocket_dats, :taluka_id, :integer
  end
end
