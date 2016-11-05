class AddDealerIdToPocketDats < ActiveRecord::Migration
  def change
    add_column :pocket_dats, :dealer_id, :integer
    add_column :pocket_dats, :position_id, :integer
  end
end
