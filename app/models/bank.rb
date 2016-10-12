class Bank < ActiveRecord::Base
 has_many :accounts
  has_many :dealers, :through => :accounts
end
