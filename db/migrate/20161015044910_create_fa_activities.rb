class CreateFaActivities < ActiveRecord::Migration
  def change
    create_table :fa_activities do |t|
      t.integer :field_assistant_id
      t.string :state_id
      t.integer :user_id
      t.integer :pocket_id
      t.date :date
      t.text :comment

      t.timestamps null: false
    end
  end
end
