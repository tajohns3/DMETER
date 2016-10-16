class AddUnitsToProductPrescriptions < ActiveRecord::Migration
  def change
    add_column :product_prescriptions, :units, :string
  end
end
