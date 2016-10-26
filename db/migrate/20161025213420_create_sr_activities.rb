class CreateSrActivities < ActiveRecord::Migration
  def change
    create_table :sr_activities do |t|
      t.integer :state_id
      t.integer :user_id
      t.date :date
      t.string :pactivity
      t.string :meet_state_manager_option
      t.integer :pocket_id
      t.integer :dealer_id
      t.integer :position_id
      t.text :meet_sm_other
      t.string :meet_dealer_option
      t.text :meet_dealer_other
      t.string :meet_fa_option
      t.string :meet_farmer_option
      t.integer :farmer_id
      t.integer :crop_id
      t.string :crop_growth_stage
      t.text :farmer_recommendation
      t.string :cf_option
      t.integer :business_development_id
      t.text :other

      t.timestamps null: false
    end
  end
end
