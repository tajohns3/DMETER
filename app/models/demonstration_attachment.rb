class DemonstrationAttachment < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :demonstration
end
