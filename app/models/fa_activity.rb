class FaActivity < ActiveRecord::Base
  has_many :meet_farmers
  has_many :dealer_visits
  has_many :assist_reps
  accepts_nested_attributes_for :meet_farmers, allow_destroy: true, reject_if: lambda{|a| a[:purpose].blank?}
  accepts_nested_attributes_for :dealer_visits, allow_destroy: true, reject_if: lambda{|b| b[:purpose].blank?}
  accepts_nested_attributes_for :assist_reps, allow_destroy: true, reject_if: lambda{|c| c[:assist].blank?}


end
