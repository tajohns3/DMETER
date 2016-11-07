class MeetStateManager < ActiveRecord::Base
  belongs_to :sr_activity
  belongs_to :pocket
  belongs_to :dealer
  belongs_to :position
  validates :other, length: {maximum: 200}

end
