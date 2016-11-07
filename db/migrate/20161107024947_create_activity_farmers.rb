class CreateActivityFarmers < ActiveRecord::Migration
  def change
    create_table :activity_farmers do |t|
      t.integer :fa_activity_id
      t.integer :farmer_id

      t.timestamps null: false
    end
  end
end
