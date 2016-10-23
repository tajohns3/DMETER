class CreateDemoresults < ActiveRecord::Migration
  def change
    create_table :demoresults do |t|
      t.integer :amid
      t.integer :srid
      t.integer :pocketid
      t.integer :faid
      t.string :demostatus

      t.timestamps null: false
    end
  end
end
