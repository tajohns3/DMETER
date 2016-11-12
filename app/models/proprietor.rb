class Proprietor < ActiveRecord::Base
  has_many :dealer_props
  has_many :dealers, :through => :dealer_props

  validates_presence_of :fname
  validates_presence_of :sname
  validates_presence_of :mname
  validates_presence_of :designation
  validates_presence_of :staddress
  validates_presence_of :phnumber

end
