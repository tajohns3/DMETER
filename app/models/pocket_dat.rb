class PocketDat < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :pocket_info
end
