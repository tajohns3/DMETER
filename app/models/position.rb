class Position < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :field_assistant
  has_many :fa_activities
  has_many :demonstrations


  mount_uploader :form, ImageUploader



end
