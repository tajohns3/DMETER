class ActivityFarmer < ActiveRecord::Base
  belongs_to :meet_farmer
  belongs_to :farmer
end
