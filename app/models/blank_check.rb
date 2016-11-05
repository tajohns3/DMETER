class BlankCheck < ActiveRecord::Base
  has_many :dealer_blanks
  has_many :dealers, :through => :dealer_blanks
end
