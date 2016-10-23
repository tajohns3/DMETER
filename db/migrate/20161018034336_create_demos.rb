class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :demostatus

      t.timestamps null: false
    end
  end
end
