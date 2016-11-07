class MeetFarmer < ActiveRecord::Base
  belongs_to :fa_activity
  has_many :product_prescriptions
  has_many :activity_farmers
  has_many :farmers, through: :activity_farmers
  belongs_to :village
  belongs_to :dealer
  accepts_nested_attributes_for :product_prescriptions, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :activity_farmers, allow_destroy: true, reject_if: lambda{|e| e[:farmer_id].blank?}

end
