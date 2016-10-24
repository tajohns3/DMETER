class Demonstration < ActiveRecord::Base
  belongs_to :pre_demonstration
  has_many :applications
  mount_uploader :image, AvatarUploader
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: :all_blank

end
