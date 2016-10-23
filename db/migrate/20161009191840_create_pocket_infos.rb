class CreatePocketInfos < ActiveRecord::Migration
  def change
    create_table :pocket_infos do |t|
      t.integer :taluka_id
      t.integer :village_id
      t.integer :dealer_id
      t.integer :farmer_id
      t.integer :fa_id

      t.timestamps null: false
    end
  end
end
