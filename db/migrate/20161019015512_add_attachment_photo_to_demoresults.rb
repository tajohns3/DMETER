class AddAttachmentPhotoToDemoresults < ActiveRecord::Migration
  def self.up
    change_table :demoresults do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :demoresults, :photo
  end
end
