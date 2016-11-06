class CreateDealerProps < ActiveRecord::Migration
  def change
    create_table :dealer_props do |t|
      t.integer :dealer_id
      t.integer :proprietor_id

      t.timestamps null: false
    end
  end
end
