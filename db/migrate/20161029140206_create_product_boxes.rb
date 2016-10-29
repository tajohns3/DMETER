class CreateProductBoxes < ActiveRecord::Migration
  def change
    create_table :product_boxes do |t|
      t.integer :product_id
      t.integer :box_id

      t.timestamps null: false
    end
  end
end
