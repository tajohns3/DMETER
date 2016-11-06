class AddVatToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :vat, :boolean
    add_column :dealers, :vat_photo, :string
    add_column :dealers, :vat_issdate, :date
    add_column :dealers, :vat_expdate, :date
  end
end
