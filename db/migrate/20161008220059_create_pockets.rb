class CreatePockets < ActiveRecord::Migration
  def change
    create_table :pockets do |t|
      t.integer :state_id
      t.integer :user_id
      t.string :pocket_name
      t.integer :user_id
      t.integer :district_id
      t.integer :crop_id
      t.integer :type_a
      t.integer :type_b
      t.integer :type_c
      t.integer :type_d
      t.integer :total_pdealer
      t.string :agriculture_land
      t.decimal :percent_irr

      t.timestamps null: false
    end
  end
end
