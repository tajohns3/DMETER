class AddDemoidtoProdSample < ActiveRecord::Migration
  def change
    add_column :prodsamples, :demo_id, :string
    add_column :prodsamples, :product_id, :integer
    add_column :prodsamples, :single_id, :integer
    add_column :prodsamples, :box_id, :integer

  end
end
