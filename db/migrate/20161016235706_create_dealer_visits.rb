class CreateDealerVisits < ActiveRecord::Migration
  def change
    create_table :dealer_visits do |t|
      t.integer :dealer_id
      t.integer :fa_activities_id
      t.integer :farmer_id
      t.integer :number_farmer
      t.string :purpose
      t.integer :inventory_id

      t.timestamps null: false
    end
  end
end
