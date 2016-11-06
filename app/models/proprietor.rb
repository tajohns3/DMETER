class Proprietor < ActiveRecord::Base
  has_many :dealer_props
  has_many :dealers, :through => :dealer_props
end
