class CreatePocketDats < ActiveRecord::Migration
  def change
    create_table :pocket_dats do |t|
      t.integer :pocket_id
      t.integer :pocket_info_id

      t.timestamps null: false
    end
  end
end
