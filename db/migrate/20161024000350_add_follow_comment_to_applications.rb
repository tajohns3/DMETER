class AddFollowCommentToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :follow_comment, :string
  end
end
