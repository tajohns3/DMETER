class FieldAssistant < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :user
  has_many :positions
  has_many :fa_targets, :dependent => :destroy
  accepts_nested_attributes_for :fa_targets, allow_destroy: true
  validates_associated :fa_targets

  mount_uploader :form, ImageUploader

  # Generates a field assistant id i.e. (TX-Harris-12)
  def fa_num
    "#{self.state.abbreviation}" + "-" + "#{self.pocket.pocket_name}" + "-" + "0" + "#{self.id}"
  end

  validates_presence_of :state_id
  validates_presence_of :pocket_id, message: "name cant be blank. "

  def sr_man_fa
    "#{self.user.first_name.titlecase}" + " " + "#{self.user.sur_name.titlecase}"
  end

  def a_man_fa
    "#{self.user.manager.first_name.titlecase}" + " " + "#{self.user.manager.sur_name.titlecase}"
  end
end
