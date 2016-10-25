class FieldAssistant < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  has_many :positions
  has_many :fa_targets, :dependent => :destroy
  accepts_nested_attributes_for :fa_targets, allow_destroy: true, reject_if: :all_blank

  mount_uploader :form, ImageUploader

  # Generates a field assistant id i.e. (TX-Harris-12)
  def fa_num
    "#{self.state.abbreviation}" + "-" + "#{self.pocket.pocket_name}" + "-" + "0" + "#{self.id}"
  end

end
