class RemoveColumnsFromDemonstration < ActiveRecord::Migration
  def self.up
    remove_column :demonstrations, :demo_pic
    remove_column :demonstrations, :photo_file_name
    remove_column :demonstrations, :photo_content_type
    remove_column :demonstrations, :photo_file_size
    remove_column :demonstrations, :photo_updated_at

  end

  def self.down
    add_column :demonstrations, :demo_pic, :string
    add_column :demonstrations, :photo_file_name, :string
    add_column :demonstrations, :photo_content_type, :string
    add_column :demonstrations, :photo_file_size, :integer
    add_column :demonstrations, :photo_updated_at, :datetime

  end
end
