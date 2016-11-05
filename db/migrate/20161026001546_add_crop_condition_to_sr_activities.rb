class AddCropConditionToSrActivities < ActiveRecord::Migration
  def change
    add_column :sr_activities, :crop_condition, :string
  end
end
