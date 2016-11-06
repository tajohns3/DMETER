class AddStateStaxToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :state_stax, :boolean
    add_column :dealers, :sst_photo, :string
    add_column :dealers, :sst_issdate, :date
    add_column :dealers, :sst_expdate, :date
  end
end
