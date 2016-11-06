class CreateSecurityChecks < ActiveRecord::Migration
  def change
    create_table :security_checks do |t|
      t.string :bank_name
      t.integer :check_number
      t.integer :bank_account
      t.integer :amount
      t.date :issue_date
      t.string :status

      t.timestamps null: false
    end
  end
end
