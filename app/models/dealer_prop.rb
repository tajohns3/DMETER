class DealerProp < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :proprietor
end
