class CreateProductSingles < ActiveRecord::Migration
  def change
    create_table :product_singles do |t|
      t.integer :product_id
      t.integer :single_id

      t.timestamps null: false
    end
  end
end
