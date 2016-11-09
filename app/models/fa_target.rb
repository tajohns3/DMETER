class FaTarget < ActiveRecord::Base
  belongs_to :field_assistant
  belongs_to :target
  belongs_to :crop
  belongs_to :dealer

  def emp_name
    "#{self.crop.crop}"
  end

end
