class AddPostDemonstrationIdToDemonstrationAttachments < ActiveRecord::Migration
  def change
    add_column :demonstration_attachments, :post_demonstration_id, :integer
  end
end
