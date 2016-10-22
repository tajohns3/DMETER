class Position < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :field_assistant


  mount_uploader :form, ImageUploader



end
