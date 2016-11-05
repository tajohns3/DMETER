class AddImageToDemonstrations < ActiveRecord::Migration
  def change
    add_column :demonstrations, :image, :string
  end
end
