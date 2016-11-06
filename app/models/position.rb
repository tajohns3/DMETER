class Position < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :field_assistant
  has_many :fa_activities
  has_many :demonstrations
  belongs_to :dealer
  has_many :pocket_dats


  mount_uploader :form, ImageUploader

  def fa_name
    "#{self.first_name}" + " " + "#{self.surname.titlecase}"
  end



end
