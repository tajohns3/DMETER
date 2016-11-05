class MeetStateManager < ActiveRecord::Base
  belongs_to :sr_activity
  validates :other, length: {maximum: 200}

end
