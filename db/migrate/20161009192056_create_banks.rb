class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :branch
      t.string :account_number
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
