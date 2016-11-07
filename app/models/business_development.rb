class BusinessDevelopment < ActiveRecord::Base
  belongs_to :sr_activity
  belongs_to :pocket
  belongs_to :pre_demonstration



  def set_bool
    self[:sample_request] ? 'Yes' : 'No'
  end
end
