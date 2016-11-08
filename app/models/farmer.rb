class Farmer < ActiveRecord::Base
  belongs_to :user
  belongs_to :state
  belongs_to :pocket
  belongs_to :village
  belongs_to :crop
  belongs_to :meet_sr_farmer
  has_many :farmcrops
  has_many :pre_demonstrations
  has_many :activity_farmers
  has_many :meet_farmers, through: :activity_farmers
  has_many :product_prescriptions
  accepts_nested_attributes_for :farmcrops, reject_if: :all_blank, allow_destroy: true
end
