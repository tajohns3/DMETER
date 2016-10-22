class AddYesToFieldAssistants < ActiveRecord::Migration
  def change
    add_column :field_assistants, :yes, :boolean
  end
end
