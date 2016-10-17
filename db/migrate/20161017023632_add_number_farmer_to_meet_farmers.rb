class AddNumberFarmerToMeetFarmers < ActiveRecord::Migration
  def change
    add_column :meet_farmers, :number_farmer, :integer
  end
end
