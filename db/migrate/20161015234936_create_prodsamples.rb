class CreateProdsamples < ActiveRecord::Migration
  def change
    create_table :prodsamples do |t|
      t.integer :psid
      t.integer :stid
      t.integer :faid
      t.string :sample_purp
      t.string :sampletype

      t.timestamps null: false
    end
  end
end
