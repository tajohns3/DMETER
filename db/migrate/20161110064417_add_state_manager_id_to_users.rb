class AddStateManagerIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :state_manager_id, :integer
  end

  def self.down
    remove_column :users, :state_manager_id
  end
end
