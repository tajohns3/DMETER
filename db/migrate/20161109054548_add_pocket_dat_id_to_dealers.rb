class AddPocketDatIdToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :pocket_dat_id, :integer
  end
end
