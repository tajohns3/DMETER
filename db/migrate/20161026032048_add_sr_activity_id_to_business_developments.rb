class AddSrActivityIdToBusinessDevelopments < ActiveRecord::Migration
  def change
    add_column :business_developments, :sr_activity_id, :integer
  end
end
