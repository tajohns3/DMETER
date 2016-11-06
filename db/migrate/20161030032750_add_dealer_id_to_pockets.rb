class AddDealerIdToPockets < ActiveRecord::Migration
  def change
    add_column :pockets, :dealer_id, :integer
    add_column :pockets, :position_id, :integer
  end
end
