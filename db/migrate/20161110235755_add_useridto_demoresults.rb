class AddUseridtoDemoresults < ActiveRecord::Migration
  def change
    add_column :demoresults, :user_id, :integer
  end
end
