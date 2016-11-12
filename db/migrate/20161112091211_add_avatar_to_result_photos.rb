class AddAvatarToResultPhotos < ActiveRecord::Migration
  def self.up
    add_column  :resultphotos, :avatar, :string
  end

  def self.down
    remove_column :resultphotos,:avatar
  end
end
