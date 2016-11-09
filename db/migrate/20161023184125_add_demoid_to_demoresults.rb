class AddDemoidToDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :state_id, :integer
  end
end
