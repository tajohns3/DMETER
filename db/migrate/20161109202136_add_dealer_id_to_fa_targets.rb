class AddDealerIdToFaTargets < ActiveRecord::Migration
  def change
    add_column :fa_targets, :dealer_id, :integer
  end
end
