class AddStatusToPreDemonstrations < ActiveRecord::Migration

  def self.up
    add_column :pre_demonstrations, :status, :string, :default => 'Active'
  end

  def self.down
    remove_column :pre_demonstrations, :status
  end
end
