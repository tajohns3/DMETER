class RemoveVillageIdFromMeetFarmer < ActiveRecord::Migration
  def self.up
    remove_column :meet_farmers, :village_id
  end

  def self.down
    add_column :meet_farmers, :village_id, :integer

  end
end
