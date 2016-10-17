class CreateAssistReps < ActiveRecord::Migration
  def change
    create_table :assist_reps do |t|
      t.integer :fa_activity_id
      t.string :assist
      t.text :comment

      t.timestamps null: false
    end
  end
end
