class CreatePocketDistricts < ActiveRecord::Migration
  def change
    create_table :pocket_districts do |t|
      t.integer :pocket_id
      t.integer :district_id

      t.timestamps null: false
    end
  end
end
