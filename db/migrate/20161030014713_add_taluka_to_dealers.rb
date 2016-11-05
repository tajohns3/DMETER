class AddTalukaToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :taluka, :string
    add_column :dealers, :district, :string
  end
end
