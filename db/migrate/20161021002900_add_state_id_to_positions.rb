class AddStateIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :state_id, :integer
  end
end
