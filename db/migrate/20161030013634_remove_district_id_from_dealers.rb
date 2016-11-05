class RemoveDistrictIdFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :district_id, :integer
  end
end
