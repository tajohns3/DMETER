class CreatePreDemonstrations < ActiveRecord::Migration
  def change
    create_table :pre_demonstrations do |t|
      t.integer :farmer_id
      t.integer :crop_id
      t.integer :fa_activity
      t.string :crop_growth
      t.string :condition
      t.string :demo_code

      t.timestamps null: false
    end
  end
end
