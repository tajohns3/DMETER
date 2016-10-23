class AddVillageToPocketDats < ActiveRecord::Migration
  def change
    add_column :pocket_dats, :village, :string
  end
end
