class PostDemonstration < ActiveRecord::Base
  belongs_to :demonstration
  belongs_to :fa_activity
  has_many :demonstration_attachments
  mount_uploader :demo_photo, AvatarUploader
  accepts_nested_attributes_for :demonstration_attachments, allow_destroy: true, reject_if: :all_blank

  def set_bool
    self[:contacrsr] ? 'Yes' : 'No'
  end
end
