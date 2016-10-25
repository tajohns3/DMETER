class AddPositionIdToFaActivities < ActiveRecord::Migration
  def change
    add_column :fa_activities, :position_id, :integer
  end
end
