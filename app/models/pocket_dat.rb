class PocketDat < ActiveRecord::Base
   belongs_to :pocket
  belongs_to :pocket_info
  has_many :dealers
  has_many :positions
  belongs_to :position
  belongs_to :farmer
  has_many :farmers
  belongs_to :dealer

  validates_presence_of :taluka
  validates_presence_of :village
  validates_presence_of :dealer_id
  validates_presence_of :position_id
  validates_presence_of :dealer_id
  validates_presence_of :farmer_id

end
