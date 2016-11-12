class Position < ActiveRecord::Base
  belongs_to :state
  belongs_to :pocket
  belongs_to :field_assistant
  belongs_to :district
  has_many :demoresults
  belongs_to :pocket_dat
  has_many :pocket_dats
  has_many :fa_activities
  has_many :demonstrations
  has_many :meet_state_managers
  has_many :prodsamples
  belongs_to :dealer

  mount_uploader :form, ImageUploader

  def fa_name
    "#{self.first_name}" + " " + "#{self.surname.titlecase}"
  end

  def fullname
    "#{first_name} #{surname}"
  end

  validates_presence_of :pocket_dat_id
  validates_presence_of :dealer_id
  validates_presence_of :district_id
  validates_presence_of :field_assistant_id
  validates_presence_of :first_name
  validates_presence_of :surname
  validates_presence_of :contact_number
  validates_presence_of :address
end
