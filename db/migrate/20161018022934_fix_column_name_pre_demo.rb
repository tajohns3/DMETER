class FixColumnNamePreDemo < ActiveRecord::Migration
  def self.up
    rename_column :pre_demonstrations, :fa_activity, :fa_activity_id
  end

  def self.down

  end
end
