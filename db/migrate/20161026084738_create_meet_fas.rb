class CreateMeetFas < ActiveRecord::Migration
  def change
    create_table :meet_fas do |t|
      t.integer :sr_activity_id
      t.string :purpose

      t.timestamps null: false
    end
  end
end
