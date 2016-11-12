class Resultphoto < ActiveRecord::Base
  belongs_to :demoresult

  mount_uploader :avatar, AvatarUploader


end
