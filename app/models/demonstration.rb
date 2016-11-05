class Demonstration < ActiveRecord::Base
  belongs_to :pre_demonstration
  belongs_to :position
  has_many :applications
  has_many :post_demonstrations
  has_many :demonstration_attachments
  mount_uploader :image, AvatarUploader
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :demonstration_attachments, allow_destroy: true, reject_if: :all_blank
  # before_create :set_status
  validates :appdone_by, presence: true

  # def set_status
  # if self.demonstration_attachments.avatar != nil
  #     self.demo_status ='complete'
  #     else
  #     self.demo_status ='active'
  #   end
  #
  # end

end
