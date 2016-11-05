class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
