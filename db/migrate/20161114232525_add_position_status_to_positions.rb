class AddPositionStatusToPositions < ActiveRecord::Migration
  def self.up
    add_column :positions, :position_status, :boolean, :default => false, :null => false
  end

  def self.down
  	remove_column :positions, :position_status
  end
end
