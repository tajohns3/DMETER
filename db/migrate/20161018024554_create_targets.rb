class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :dealer_id
      t.integer :crop_id

      t.timestamps null: false
    end
  end
end
