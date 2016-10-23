class AddDemoIdToProdsamples < ActiveRecord::Migration
  def change
    add_column :prodsamples, :demoid, :string
  end
end
