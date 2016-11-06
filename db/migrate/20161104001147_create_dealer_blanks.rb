class CreateDealerBlanks < ActiveRecord::Migration
  def change
    create_table :dealer_blanks do |t|
      t.integer :dealer_id
      t.integer :blank_check_id

      t.timestamps null: false
    end
  end
end
