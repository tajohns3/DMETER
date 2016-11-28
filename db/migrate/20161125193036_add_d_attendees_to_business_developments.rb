class AddDAttendeesToBusinessDevelopments < ActiveRecord::Migration
  def self.up
    add_column :business_developments, :d_attendees, :integer
  end

  def self.down
   remove_column :business_developments, :d_attendees
  end
end
