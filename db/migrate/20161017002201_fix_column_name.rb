class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :dealer_visits, :fa_activities_id, :fa_activity_id

  end

  def self.down

  end
end
