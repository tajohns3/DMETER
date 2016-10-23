class AddMeetFarmerIdToProductPrescriptions < ActiveRecord::Migration
  def change
    add_column :product_prescriptions, :meet_farmer_id, :integer
  end
end
