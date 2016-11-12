class AddMangeridtoFarmer < ActiveRecord::Migration
  def change
    add_column :farmers, :manager_id, :integer
  end
end
