class Dealeravatar < ActiveRecord::Base
	belongs_to :dealer

  mount_uploader :dealer_photo, AvatarUploader
end
