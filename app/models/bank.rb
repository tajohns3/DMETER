class Bank < ActiveRecord::Base
 has_many :accounts
  has_many :dealers, :through => :accounts
  validates :name, :branch,:account_number, presence: true
end
