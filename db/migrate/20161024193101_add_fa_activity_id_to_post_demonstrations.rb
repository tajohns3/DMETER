class AddFaActivityIdToPostDemonstrations < ActiveRecord::Migration
  def change
    add_column :post_demonstrations, :fa_activity_id, :integer
  end
end
