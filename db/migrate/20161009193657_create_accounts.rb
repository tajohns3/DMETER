class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :bank_id
      t.integer :dealer_id

      t.timestamps null: false
    end
  end
end
