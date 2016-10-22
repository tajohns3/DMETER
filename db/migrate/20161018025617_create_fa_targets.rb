class CreateFaTargets < ActiveRecord::Migration
  def change
    create_table :fa_targets do |t|
      t.integer :field_assistant_id
      t.integer :target_id
      t.integer :village_number
      t.date :start_date
      t.date :end_date
      t.integer :total_month
      t.integer :sample_number
      t.integer :demo_number
      t.integer :farmer_number
      t.integer :prescription_number

      t.timestamps null: false
    end
  end
end
