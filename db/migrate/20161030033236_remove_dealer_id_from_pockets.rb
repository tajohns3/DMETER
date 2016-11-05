class RemoveDealerIdFromPockets < ActiveRecord::Migration
  def change
    remove_column :pockets, :dealer_id, :integer
    remove_column :pockets, :position_id, :integer
  end
end
