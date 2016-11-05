class AddDemonstrationIdToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :demonstration_id, :integer
  end
end
