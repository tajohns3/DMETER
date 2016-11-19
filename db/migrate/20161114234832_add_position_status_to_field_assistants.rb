class AddPositionStatusToFieldAssistants < ActiveRecord::Migration
 def self.up
    add_column :field_assistants, :position_status, :boolean, :default => false, :null => false
  end

  def self.down
  	remove_column :field_assistants, :position_status
  end
end
