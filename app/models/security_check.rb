class SecurityCheck < ActiveRecord::Base
  has_many :dealer_securities
  has_many :dealers, :through => :dealer_securities

  validates_presence_of :check_number
  validates_presence_of :bank_account
  validates_presence_of :bank_name
  validates_presence_of :issue_date
  validates_presence_of :status
  validates_presence_of :amount

end
