class MeetSrFarmer < ActiveRecord::Base
  belongs_to :sr_activity
  belongs_to :crop
end
