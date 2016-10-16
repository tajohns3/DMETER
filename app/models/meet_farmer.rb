class MeetFarmer < ActiveRecord::Base
  belongs_to :fa_activity
  has_many :product_prescriptions
  accepts_nested_attributes_for :product_prescriptions, allow_destroy: true, reject_if: :all_blank
end
