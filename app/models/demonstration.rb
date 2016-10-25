class Demonstration < ActiveRecord::Base
  belongs_to :pre_demonstration
  belongs_to :position
  has_many :applications
  has_many :post_demonstrations
  mount_uploader :image, AvatarUploader
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: :all_blank

end
