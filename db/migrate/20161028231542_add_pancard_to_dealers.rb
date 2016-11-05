class AddPancardToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :pancard, :boolean
    add_column :dealers, :pc_photo, :string
    add_column :dealers, :pc_issdate, :date
    add_column :dealers, :pc_expdate, :date
  end
end
