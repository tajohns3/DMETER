class CreateResultphotos < ActiveRecord::Migration
  def change
    create_table :resultphotos do |t|
      t.belongs_to :demoresult, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
