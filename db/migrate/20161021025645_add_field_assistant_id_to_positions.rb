class AddFieldAssistantIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :field_assistant_id, :integer
  end
end
