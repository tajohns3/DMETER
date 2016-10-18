class PreDemonstration < ActiveRecord::Base
  belongs_to :fa_activity
  has_many :applications
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: lambda{|a| a[:farmer_id].blank?}

end
