class RemoveColumn < ActiveRecord::Migration
  def self.up
    remove_column :sr_activities, :business_development_id
  end

  def self.down
    add_column :sr_activities, :business_development_id, :integer
  end
end
