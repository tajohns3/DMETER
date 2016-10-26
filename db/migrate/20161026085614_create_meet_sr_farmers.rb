class CreateMeetSrFarmers < ActiveRecord::Migration
  def change
    create_table :meet_sr_farmers do |t|
      t.integer :farmer_id
      t.integer :crop_id
      t.string :crop_condition
      t.string :crop_growth
      t.text :recommendation
      t.string :purpose
      t.integer :sr_activity_id

      t.timestamps null: false
    end
  end
end
