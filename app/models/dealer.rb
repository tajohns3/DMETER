class Dealer < ActiveRecord::Base
  has_many :accounts
  has_many :banks, through: :accounts
  belongs_to :user
  accepts_nested_attributes_for :banks, allow_destroy: true, reject_if: :all_blank



end
