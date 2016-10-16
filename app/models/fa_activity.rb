class FaActivity < ActiveRecord::Base
  has_many :meet_farmers
  accepts_nested_attributes_for :meet_farmers, allow_destroy: true, reject_if: lambda{|a| a[:purpose].blank?}


end
