class AddNoreceiveToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :noreceive, :integer
  end
end
