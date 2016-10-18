class FaActivity < ActiveRecord::Base
  has_many :meet_farmers
  has_many :dealer_visits
  has_many :assist_reps
  has_many :pre_demonstrations
  belongs_to :state
  belongs_to :user
  accepts_nested_attributes_for :meet_farmers, allow_destroy: true, reject_if: lambda{|a| a[:purpose].blank?}
  accepts_nested_attributes_for :dealer_visits, allow_destroy: true, reject_if: lambda{|b| b[:purpose].blank?}
  accepts_nested_attributes_for :assist_reps, allow_destroy: true, reject_if: lambda{|c| c[:assist].blank?}
  accepts_nested_attributes_for :pre_demonstrations, allow_destroy: true, reject_if: lambda{|d| d[:farmer_id].blank?}


end
