class AddManagerIdToFaActivities < ActiveRecord::Migration
  def change
    add_column :fa_activities, :manager_id, :integer
  end
end
