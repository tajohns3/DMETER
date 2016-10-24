class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.integer :stid
      t.integer :useridstmgr
      t.integer :useridamgr
      t.integer :useridsr
      t.integer :pocketid
      t.integer :dealerid
      t.string :name
      t.integer :villageid
      t.string :phnumber
      t.integer :cropid
      t.integer :acreage
      t.string :unit
      t.string :irr_source
      t.string :introcall
      t.binary :callverified

      t.timestamps null: false
    end
  end
end
