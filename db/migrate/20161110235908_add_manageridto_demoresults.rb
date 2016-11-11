class AddManageridtoDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :manager_id, :integer
  end
end
