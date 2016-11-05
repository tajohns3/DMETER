class AddWhaddressToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :whaddress, :string
    add_column :dealers, :whatpost, :string
    add_column :dealers, :whpincode, :string
    add_column :dealers, :whtaluka, :string
    add_column :dealers, :whdistrict, :string
  end
end
