class CreateTalukas < ActiveRecord::Migration
  def change
    create_table :talukas do |t|
      t.string :taluka

      t.timestamps null: false
    end
  end
end
