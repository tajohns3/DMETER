class AddDealerIdToMeetFarmers < ActiveRecord::Migration
  def change
    add_column :meet_farmers, :dealer_id, :integer
  end
end
