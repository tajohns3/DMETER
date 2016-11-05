class AddTalukaIdToPocketDats < ActiveRecord::Migration
  def change
    add_column :pocket_dats, :taluka_id, :integer
  end
end
