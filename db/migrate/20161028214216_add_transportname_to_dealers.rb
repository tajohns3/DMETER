class AddTransportnameToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :transportname, :string
    add_column :dealers, :transportbranch, :string
    add_column :dealers, :transportacct, :string
    add_column :dealers, :transportadd, :string
    add_column :dealers, :transportph, :string
  end
end
