class CreateDealerphotos < ActiveRecord::Migration
  def change
    create_table :dealerphotos do |t|
      t.integer :dealer_id
      t.string :avatar
      t.string :avatar_photo

      t.timestamps null: false
    end
  end
end
