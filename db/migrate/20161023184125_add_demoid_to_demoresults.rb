class AddDemoidToDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :stid, :integer
  end
end
