class ChangeStateIdInFaActivities < ActiveRecord::Migration
  def self.up
      change_column :fa_activities, :state_id, :integer
  end

  def self.down
    change_column :fa_activities, :state_id, :string
  end
end
