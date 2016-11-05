class AddCentStaxToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :cent_stax, :boolean
    add_column :dealers, :cst_photo, :string
    add_column :dealers, :cst_issdate, :date
    add_column :dealers, :cst_expdate, :date
  end
end
