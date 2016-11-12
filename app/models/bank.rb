class Bank < ActiveRecord::Base
 has_many :accounts
  has_many :dealers, :through => :accounts


 validates_presence_of :name
 validates_presence_of :branch
 validates_presence_of :account_number
 validates_presence_of :address
 validates_presence_of :phone

end
