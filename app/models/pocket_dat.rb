class PocketDat < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :pocket_info
  belongs_to :dealer
  belongs_to :position
end
