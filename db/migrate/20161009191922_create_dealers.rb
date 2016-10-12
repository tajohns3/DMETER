class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.integer :state_id
      t.integer :user_id
      t.integer :pocket_id
      t.string :name
      t.string :address
      t.string :atpost
      t.string :pin_code
      t.integer :taluka_id
      t.integer :district_id

      t.timestamps null: false
    end
  end
end
