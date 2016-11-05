class RemoveAppdoneByFromDemonstrations < ActiveRecord::Migration
  def self.up
    remove_column :demonstrations, :appdone_by
  end

  def self.down
    add_column :demonstrations, :appdone_by, :string
  end
end
