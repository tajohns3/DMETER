class AddAccessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :access, :boolean,:default => false, :null => false
  end
end
