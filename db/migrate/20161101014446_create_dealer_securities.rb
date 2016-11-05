class CreateDealerSecurities < ActiveRecord::Migration
  def change
    create_table :dealer_securities do |t|
      t.integer :dealer_id
      t.integer :security_check_id

      t.timestamps null: false
    end
  end
end
