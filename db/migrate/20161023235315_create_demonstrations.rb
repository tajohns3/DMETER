class CreateDemonstrations < ActiveRecord::Migration
  def change
    create_table :demonstrations do |t|
      t.integer :pre_demonstration_id
      t.string :appdone_by
      t.string :demo_status
      t.integer :fa_activity_id

      t.timestamps null: false
    end
  end
end
