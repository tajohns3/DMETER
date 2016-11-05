class ChangeDemoStatusDefault < ActiveRecord::Migration
  def change
    change_column_default(:demonstrations, :demo_status, 'active')
  end
end
