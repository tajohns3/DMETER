class AddPocketDatIdToMeetFarmer < ActiveRecord::Migration
  def self.up
    add_column :meet_farmers, :pocket_dat_id, :integer
  end

  def self.down
    remove_column :meet_farmers, :pocket_dat_id
  end
end
