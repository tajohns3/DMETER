class AddPositionIdToDemonstrations < ActiveRecord::Migration
  def change
    add_column :demonstrations, :position_id, :integer
  end
end
