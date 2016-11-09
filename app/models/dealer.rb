class Dealer < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :state
  has_many :positions
  has_many :pocket_infos
  has_many :pocket_dats
  has_many :accounts
  has_many :banks, through: :accounts
  has_many :meet_state_managers
  has_many :meet_farmers
  has_many :product_prescriptions
  has_many :dealer_visits
  belongs_to :user
  accepts_nested_attributes_for :banks, allow_destroy: true, reject_if: :all_blank

  has_many :dealer_props
  has_many :proprietors, through: :dealer_props
  accepts_nested_attributes_for :proprietors, allow_destroy: true, reject_if: :all_blank

  has_many :dealer_securities
  has_many :security_checks, through: :dealer_securities
  accepts_nested_attributes_for :security_checks, allow_destroy: true, reject_if: :all_blank

  has_many :dealer_blanks
  has_many :blank_checks, through: :dealer_blanks
  accepts_nested_attributes_for :blank_checks, allow_destroy: true, reject_if: :all_blank



  mount_uploader :fl_photo, ImageUploader
  mount_uploader :cst_photo, ImageUploader
  mount_uploader :sst_photo, ImageUploader
  mount_uploader :vat_photo, ImageUploader
  mount_uploader :pc_photo, ImageUploader
  mount_uploader :dealerreqform, ImageUploader
  mount_uploader :dealerphoto, ImageUploader


end
