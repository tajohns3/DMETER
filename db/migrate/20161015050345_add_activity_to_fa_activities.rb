class AddActivityToFaActivities < ActiveRecord::Migration
  def change
    add_column :fa_activities, :activity, :string
  end
end
