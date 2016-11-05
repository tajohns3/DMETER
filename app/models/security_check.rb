class SecurityCheck < ActiveRecord::Base
  has_many :dealer_securities
  has_many :dealers, :through => :dealer_securities
end
