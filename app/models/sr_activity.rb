class SrActivity < ActiveRecord::Base
  has_many :business_developments
  has_many :meet_state_managers
  has_many :meet_dealers
  has_many :meet_fas
  has_many :meet_sr_farmers
  belongs_to :state
  belongs_to :user
  belongs_to :manager, class_name: "User", foreign_key: "manager_id"
  accepts_nested_attributes_for :business_developments, allow_destroy: true, reject_if: lambda{|d| d[:option].blank?}
  accepts_nested_attributes_for :meet_state_managers, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_dealers, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_fas, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_sr_farmers, allow_destroy: true, reject_if: :all_blank
end
