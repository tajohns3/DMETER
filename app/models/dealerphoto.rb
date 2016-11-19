class Dealerphoto < ActiveRecord::Base
	belongs_to :dealer

  mount_uploader :avatar, AvatarUploader
  
end
