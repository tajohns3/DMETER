class RemoveTalukaIdFromDealers < ActiveRecord::Migration
  def change
    remove_column :dealers, :taluka_id, :integer
  end
end
