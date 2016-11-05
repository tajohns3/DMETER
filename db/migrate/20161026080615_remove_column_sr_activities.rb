class RemoveColumnSrActivities < ActiveRecord::Migration
  def self.up
    remove_column :sr_activities, :meet_state_manager_option
    remove_column :sr_activities, :pocket_id
    remove_column :sr_activities, :dealer_id
    remove_column :sr_activities, :position_id
    remove_column :sr_activities, :meet_sm_other
    remove_column :sr_activities, :meet_dealer_option
    remove_column :sr_activities, :meet_dealer_other
    remove_column :sr_activities, :meet_fa_option
    remove_column :sr_activities, :meet_farmer_option
    remove_column :sr_activities, :farmer_id
    remove_column :sr_activities, :crop_id
    remove_column :sr_activities, :crop_growth_stage
    remove_column :sr_activities, :farmer_recommendation
    remove_column :sr_activities, :crop_condition
  end

  def self.down
    add_column :sr_activities, :meet_state_manager_option, :string
    add_column :sr_activities, :pocket_id, :integer
    add_column :sr_activities, :dealer_id, :integer
    add_column :sr_activities, :position_id, :integer
    add_column :sr_activities, :meet_sm_other, :text
    add_column :sr_activities, :meet_dealer_option, :string
    add_column :sr_activities, :meet_dealer_other, :text
    add_column :sr_activities, :meet_fa_option, :string
    add_column :sr_activities, :meet_farmer_option, :string
    add_column :sr_activities, :farmer_id, :integer
    add_column :sr_activities, :crop_id, :integer
    add_column :sr_activities, :crop_growth_stage, :string
    add_column :sr_activities, :farmer_recommendation, :text
    add_column :sr_activities, :crop_condition, :string
  end
end
