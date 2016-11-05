class AddManagerIdToSrActivities < ActiveRecord::Migration
  def change
    add_column :sr_activities, :manager_id, :integer
  end
end
