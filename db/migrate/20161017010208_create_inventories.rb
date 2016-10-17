class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :dealer_visit_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
