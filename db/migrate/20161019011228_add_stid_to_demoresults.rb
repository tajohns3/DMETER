class AddStidToDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :demo_id, :integer
  end
end
