class AddFaNumberToFieldAssistants < ActiveRecord::Migration
  def change
    add_column :field_assistants, :fa_number, :string
  end
end
