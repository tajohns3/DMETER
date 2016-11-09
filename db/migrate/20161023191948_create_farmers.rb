class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.integer :state_id
      t.integer :useridstmgr
      t.integer :useridamgr
      t.integer :useridsr
      t.integer :pocket_id
      t.integer :dealer_id
      t.string :name
      t.integer :village_id
      t.string :phnumber
      t.integer :crop_id
      t.integer :acreage
      t.string :unit
      t.string :irr_source
      t.string :introcall
      t.binary :callverified

      t.timestamps null: false
    end
  end
end
