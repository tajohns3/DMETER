class CreateMeetDealers < ActiveRecord::Migration
  def change
    create_table :meet_dealers do |t|
      t.string :purpose
      t.text :other
      t.integer :sr_activity_id

      t.timestamps null: false
    end
  end
end
