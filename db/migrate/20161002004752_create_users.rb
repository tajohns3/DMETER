class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :sur_name
      t.string :phone
      t.string :location
      t.string :user_name
      t.string :role

      t.timestamps null: false
    end
  end
end
