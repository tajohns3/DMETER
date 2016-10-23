class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :village
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
