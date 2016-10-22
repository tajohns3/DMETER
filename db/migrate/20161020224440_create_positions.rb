class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :fa_number
      t.string :first_name
      t.string :surname
      t.string :address
      t.string :taluka
      t.string :district
      t.string :pin_code
      t.string :contact_number
      t.string :form
      t.boolean :yes
      t.boolean :no
      t.integer :dealer_id

      t.timestamps null: false
    end
  end
end
