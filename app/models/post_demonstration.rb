class PostDemonstration < ActiveRecord::Base
  belongs_to :demonstration
  mount_uploader :demo_photo, AvatarUploader
end
