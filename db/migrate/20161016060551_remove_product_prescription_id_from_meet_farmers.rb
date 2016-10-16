class RemoveProductPrescriptionIdFromMeetFarmers < ActiveRecord::Migration

  def change
    remove_column :meet_farmers, :product_prescription_id, :integer
  end
end
