class Position < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :field_assistant
  has_many :fa_activities
  has_many :demonstrations
  has_many :meet_state_managers
  has_many :pocket_dats
  belongs_to :dealer

  mount_uploader :form, ImageUploader

  def fa_name
    "#{self.first_name}" + " " + "#{self.surname.titlecase}"
  end



end
