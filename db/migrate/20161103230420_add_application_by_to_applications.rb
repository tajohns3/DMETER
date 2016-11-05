class AddApplicationByToApplications < ActiveRecord::Migration
  def self.up
    add_column :applications, :application_by, :string
  end

  def self.down
    remove_column :applications, :application_by, :string
  end
end
