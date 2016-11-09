class CreateFarmcrops < ActiveRecord::Migration
  def change
    create_table :farmcrops do |t|
      t.integer :crop_id
      t.integer :acreage
      t.string :unit
      t.string :irr_source
      t.belongs_to :farmer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
