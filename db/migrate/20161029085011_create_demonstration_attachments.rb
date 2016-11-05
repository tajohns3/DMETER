class CreateDemonstrationAttachments < ActiveRecord::Migration
  def change
    create_table :demonstration_attachments do |t|
      t.integer :demonstration_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
