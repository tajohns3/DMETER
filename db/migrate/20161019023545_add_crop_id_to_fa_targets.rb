class AddCropIdToFaTargets < ActiveRecord::Migration
  def change
    add_column :fa_targets, :crop_id, :integer
  end
end
