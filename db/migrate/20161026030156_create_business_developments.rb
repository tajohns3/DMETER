class CreateBusinessDevelopments < ActiveRecord::Migration
  def change
    create_table :business_developments do |t|
      t.integer :pre_demonstration_id
      t.integer :pocket_id
      t.string :option
      t.boolean :sample_request, :default => false, :null => false
      t.integer :numattendees
      t.integer :a_attendees
      t.integer :b_attendees
      t.integer :c_attendees

      t.timestamps null: false
    end
  end
end
