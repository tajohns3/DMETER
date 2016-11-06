class RemoveImageFromDemonstrations < ActiveRecord::Migration
  def self.up
    remove_column :demonstrations, :image
    remove_column :demonstrations, :demo_pic

  end

  def self.down
      add_column :demonstrations, :image, :string
      add_column :demonstrations, :demo_pic, :string

  end
end
