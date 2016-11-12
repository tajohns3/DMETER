class PocketDat < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :pocket_info
  has_many :dealer
  has_many :meet_farmers
  has_many :positions

  belongs_to :farmer
  belongs_to :dealer

  validates_presence_of :taluka
  validates_presence_of :village
  validates_presence_of :dealer_id
  validates_presence_of :position_id
  validates_presence_of :dealer_id
  validates_presence_of :farmer_id

end
