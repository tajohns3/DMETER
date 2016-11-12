class Dealer < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :state
  belongs_to :district
  has_many :positions
  has_many :fa_targets
  has_many :pocket_infos
  has_many :farmers
  belongs_to :pocket_dats
  has_many :accounts
  has_many :banks, through: :accounts
  has_many :meet_state_managers
  has_many :meet_farmers
  has_many :product_prescriptions
  has_many :dealer_visits
  belongs_to :user
  accepts_nested_attributes_for :banks, allow_destroy: true
  validates_associated :banks

  has_many :dealer_props
  has_many :proprietors, through: :dealer_props
  accepts_nested_attributes_for :proprietors, allow_destroy: true
  validates_associated :proprietors


  has_many :dealer_securities
  has_many :security_checks, through: :dealer_securities
  accepts_nested_attributes_for :security_checks, allow_destroy: true
  validates_associated :security_checks

  has_many :dealer_blanks
  has_many :blank_checks, through: :dealer_blanks
  accepts_nested_attributes_for :blank_checks, allow_destroy: true
  validates_associated :blank_checks


  mount_uploader :fl_photo, ImageUploader
  mount_uploader :cst_photo, ImageUploader
  mount_uploader :sst_photo, ImageUploader
  mount_uploader :vat_photo, ImageUploader
  mount_uploader :pc_photo, ImageUploader
  mount_uploader :dealerreqform, ImageUploader
  mount_uploader :dealerphoto, ImageUploader


  #VALIDATIONS

  validates_presence_of :state_id
  validates_presence_of :user_id
  validates_presence_of :pocket_id, message: "name cant be blank. "
  validates_presence_of :state_id
  validates_presence_of :user_id
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :pin_code
  validates_presence_of :atpost
  validates_presence_of :pocket_dat_id
  validates_presence_of :district_id
  validates_presence_of :user
  validates_presence_of :whatpost
  validates_presence_of :whaddress
  validates_presence_of :whpincode
  validates_presence_of :transportph
  validates_presence_of :transportname
  validates_presence_of :transportacct
  validates_presence_of :transportbranch
  validates_presence_of :transportadd





end
