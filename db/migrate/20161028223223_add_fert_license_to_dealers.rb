class AddFertLicenseToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :fert_license, :boolean
    add_column :dealers, :fl_photo, :string
    add_column :dealers, :fl_issdate, :date
    add_column :dealers, :fl_expdate, :date
  end
end
