class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :pre_demonstration_id
      t.string :app_area
      t.date :app_date
      t.string :competitor
      t.string :app_type
      t.date :follow_date

      t.timestamps null: false
    end
  end
end
