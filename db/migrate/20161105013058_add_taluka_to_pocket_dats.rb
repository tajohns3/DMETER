class AddTalukaToPocketDats < ActiveRecord::Migration
  def self.up
    add_column :pocket_dats, :taluka, :string
  end

  def self.down
    remove_column :pocket_dats, :taluka
  end
end
