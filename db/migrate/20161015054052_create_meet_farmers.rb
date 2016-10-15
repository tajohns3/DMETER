class CreateMeetFarmers < ActiveRecord::Migration
  def change
    create_table :meet_farmers do |t|
      t.integer :fa_activity_id
      t.integer :farmer_id
      t.string :purpose
      t.string :consultation
      t.integer :product_prescription_id

      t.timestamps null: false
    end
  end
end
