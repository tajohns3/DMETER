class SrActivity < ActiveRecord::Base
  has_many :business_developments
  belongs_to :state
  accepts_nested_attributes_for :business_developments, allow_destroy: true, reject_if: lambda{|d| d[:option].blank?}
end
