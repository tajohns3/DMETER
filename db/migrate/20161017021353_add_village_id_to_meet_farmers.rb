class AddVillageIdToMeetFarmers < ActiveRecord::Migration
  def change
    add_column :meet_farmers, :village_id, :integer
  end
end
