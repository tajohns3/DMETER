class DemonstrationAttachment < ActiveRecord::Base
  belongs_to :post_demonstration
  mount_uploader :avatar, AvatarUploader
  belongs_to :demonstration
end
