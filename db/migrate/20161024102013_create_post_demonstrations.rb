class CreatePostDemonstrations < ActiveRecord::Migration
  def change
    create_table :post_demonstrations do |t|
      t.integer :demonstration_id
      t.string :observation
      t.boolean :contacrsr
      t.text :comment
      t.string :demo_photo

      t.timestamps null: false
    end
  end
end
