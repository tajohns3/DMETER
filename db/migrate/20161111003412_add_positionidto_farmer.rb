class AddPositionidtoFarmer < ActiveRecord::Migration
  def change
    add_column :farmers, :position_id, :integer
  end
end
