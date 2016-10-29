class AddFieldsToProductApplications < ActiveRecord::Migration
  def self.up
    add_column :product_applications, :single_id, :integer
    add_column :product_applications, :box_id, :integer
  end

  def self.down
    remove_column :product_applications, :single
    remove_column :product_applications, :box
  end
end
