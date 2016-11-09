class RemoveFaIdFromActivityFarmers < ActiveRecord::Migration
  def self.up
    remove_column :activity_farmers, :fa_activity_id
  end

  def self.down
    add_column :activity_farmers,:fa_activity_id, :integer
  end
end
