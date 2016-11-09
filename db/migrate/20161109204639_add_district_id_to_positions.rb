class AddDistrictIdToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :district_id, :integer
  end
end
