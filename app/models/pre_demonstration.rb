class PreDemonstration < ActiveRecord::Base
  belongs_to :fa_activity
  has_many :applications
  accepts_nested_attributes_for :applications, allow_destroy: true, reject_if: lambda{|a| a[:app_area].blank?}
  before_create :pre_demo_code_maker

  def pre_demo_code_maker
    state_name = self.fa_activity.state.state
   first_name = self.fa_activity.user.first_name
    sur_name = self.fa_activity.user.sur_name

    self.demo_code=state_name+'-'+self.crop_id.to_s+'-'+first_name[0]+sur_name[0]+'-'+self.fa_activity.id.to_s
  end


end
