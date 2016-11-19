class CreateDealeravatars < ActiveRecord::Migration
  def change
    create_table :dealeravatars do |t|
      t.integer :dealer_id
      t.string :dealer_photo

      t.timestamps null: false
    end
  end
end
