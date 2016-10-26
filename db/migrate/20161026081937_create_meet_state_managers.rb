class CreateMeetStateManagers < ActiveRecord::Migration
  def change
    create_table :meet_state_managers do |t|
      t.integer :pocket_id
      t.integer :dealer_id
      t.integer :position_id
      t.string :purpose
      t.text :other
      t.integer :sr_activity_id

      t.timestamps null: false
    end
  end
end
