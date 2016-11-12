class PocketDat < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :pocket_info
  has_many :dealer
  has_many :meet_farmers
  belongs_to :position
  belongs_to :farmer
end
