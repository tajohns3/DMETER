class Demonstration < ActiveRecord::Base
  belongs_to :pre_demonstration
  belongs_to :position
  has_many :applications
  has_many :post_demonstrations
  has_many :demonstration_attachments
  mount_uploader :image, AvatarUploader
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :demonstration_attachments, allow_destroy: true, reject_if: :all_blank
  before_create :set_pre_demo_status



   def set_pre_demo_status
     pre_demo_id = self.pre_demonstration_id
     pre_demo = PreDemonstration.find(pre_demo_id)
     pre_demo.update_attribute(:status, 'complete')
   end

  def set_demo_status

  end


end
