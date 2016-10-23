class CreateProductApplications < ActiveRecord::Migration
  def change
    create_table :product_applications do |t|
      t.integer :application_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
