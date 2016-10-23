class Demoresult < ActiveRecord::Base
  belongs_to :user
  belongs_to :state
  belongs_to :pocket

  has_attached_file :photo, :styles => {  :thumb =>  "100x100#",
                                          :medium => "300x300>" }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
