class MeetSrFarmer < ActiveRecord::Base
  belongs_to :sr_activity
  belongs_to :crop
  belongs_to :farmer
end
