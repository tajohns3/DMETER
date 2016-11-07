class AddMeetFarmerIdToActivityFarmers < ActiveRecord::Migration
  def self.up
    add_column :activity_farmers, :meet_farmer_id, :integer
  end
  def self.down
    remove_column :activity_farmers, :meet_farmer_id
  end
end
