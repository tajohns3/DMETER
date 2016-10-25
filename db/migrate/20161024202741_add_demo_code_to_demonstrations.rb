class AddDemoCodeToDemonstrations < ActiveRecord::Migration
  def change
    add_column :demonstrations, :demo_code, :string
  end
end
