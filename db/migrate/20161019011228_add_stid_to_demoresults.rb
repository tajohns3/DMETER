class AddStidToDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :demoid, :integer
  end
end
