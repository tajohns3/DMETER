class AddDistrictIdToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :district_id, :integer
  end
end
