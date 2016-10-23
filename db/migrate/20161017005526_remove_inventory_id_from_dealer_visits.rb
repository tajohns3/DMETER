class RemoveInventoryIdFromDealerVisits < ActiveRecord::Migration
  def self.up
    remove_column :dealer_visits, :inventory_id, :integer
  end

  def self.down

  end
end
