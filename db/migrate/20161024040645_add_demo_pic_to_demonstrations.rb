class AddDemoPicToDemonstrations < ActiveRecord::Migration
  def change
    add_column :demonstrations, :demo_pic, :string
  end
end
