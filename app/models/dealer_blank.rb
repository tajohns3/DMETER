class DealerBlank < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :blank_check
end
