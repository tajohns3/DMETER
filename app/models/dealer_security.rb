class DealerSecurity < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :security_check
end
