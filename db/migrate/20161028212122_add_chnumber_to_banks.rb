class AddChnumberToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :chnumber, :integer
  end
end
