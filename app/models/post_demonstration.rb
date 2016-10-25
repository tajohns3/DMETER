class PostDemonstration < ActiveRecord::Base
  belongs_to :demonstration
  belongs_to :fa_activity
  mount_uploader :demo_photo, AvatarUploader
end
