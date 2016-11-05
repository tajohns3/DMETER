class CreateBlankChecks < ActiveRecord::Migration
  def change
    create_table :blank_checks do |t|
      t.string :bank_name
      t.string :blank_check
      t.integer :bank_account
      t.integer :cheque_num

      t.timestamps null: false
    end
  end
end
