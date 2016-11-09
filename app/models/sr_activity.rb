class SrActivity < ActiveRecord::Base
  has_one :business_development
  has_one :meet_state_manager
  has_one :meet_dealer
  has_one :meet_fa
  has_one :meet_sr_farmer
  belongs_to :state
  belongs_to :user
  belongs_to :manager, class_name: "User", foreign_key: "manager_id"
  accepts_nested_attributes_for :business_development, allow_destroy: true, reject_if: lambda{|d| d[:option].blank?}
  accepts_nested_attributes_for :meet_state_manager, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_dealer, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_fa, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :meet_sr_farmer, allow_destroy: true, reject_if: :all_blank

  validates :state_id, :user_id, :manager_id, :date, :pactivity, presence: true



  def sr_name
    "#{self.user.first_name}" + " " + "#{self.user.sur_name.titlecase}"
  end

  def sr_man
    "#{self.user.manager.first_name.titlecase}" + " " + "#{self.manager.sur_name.titlecase}"
  end


end
