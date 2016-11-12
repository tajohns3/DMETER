class CreateProdsamples < ActiveRecord::Migration
  def change
    create_table :prodsamples do |t|
      t.integer :ps_id
      t.integer :state_id
      t.integer :position_id
      t.string :sample_purp
      t.string :sampletype

      t.timestamps null: false
    end
  end
end
