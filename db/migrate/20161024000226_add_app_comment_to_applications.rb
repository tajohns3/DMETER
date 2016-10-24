class AddAppCommentToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :app_comment, :string
  end
end
