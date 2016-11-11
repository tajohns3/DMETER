class AddPositionidtoDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :position_id, :integer
  end
end
