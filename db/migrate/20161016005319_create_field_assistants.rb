class CreateFieldAssistants < ActiveRecord::Migration
  def change
    create_table :field_assistants do |t|
      t.integer :state_id
      t.integer :user_id
      t.integer :pocket_id
      t.string :first_name
      t.string :surname
      t.string :address
      t.string :taluka
      t.string :district
      t.string :pin_code
      t.string :contact_number
      t.boolean :experience
      t.integer :dealer_id
      t.string :form

      t.timestamps null: false
    end
  end
end
