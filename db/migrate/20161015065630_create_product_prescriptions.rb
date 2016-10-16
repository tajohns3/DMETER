class CreateProductPrescriptions < ActiveRecord::Migration
  def change
    create_table :product_prescriptions do |t|
      t.integer :dealer_id
      t.integer :farmer_id
      t.integer :crop_id
      t.string :condition
      t.string :crop_growth
      t.string :crop_cond
      t.string :acreage
      t.boolean :prescribe

      t.timestamps null: false
    end
  end
end
