class CreatePocketCrops < ActiveRecord::Migration
  def change
    create_table :pocket_crops do |t|
      t.integer :pocket_id
      t.integer :crop_id

      t.timestamps null: false
    end
  end
end
