class BlankCheck < ActiveRecord::Base
  has_many :dealer_blanks
  has_many :dealers, :through => :dealer_blanks

  validates_presence_of :bank_name
  validates_presence_of :bank_account
  validates_presence_of :blank_check
  validates_presence_of :cheque_num
end
