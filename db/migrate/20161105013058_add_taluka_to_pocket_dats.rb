class AddTalukaToPocketDats < ActiveRecord::Migration
  def change
    add_column :pocket_dats, :taluka, :string
  end
end
