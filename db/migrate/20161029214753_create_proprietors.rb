class CreateProprietors < ActiveRecord::Migration
  def change
    create_table :proprietors do |t|
      t.string :fname
      t.string :sname
      t.string :mname
      t.string :designation
      t.string :staddress
      t.string :phnumber

      t.timestamps null: false
    end
  end
end
