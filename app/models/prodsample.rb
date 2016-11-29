class Prodsample < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  belongs_to :position
  belongs_to :product
  belongs_to :single
  belongs_to :box

#this needs to be corrected
#  def ps_num
#    "#(self.state.state)" + "-" + "#(self.pocket.pocket_name)" + "-" + "#(self.id)"
#  end

  def ps_num
    self.demo_code=state_name+'-'+crop_name+'-'+first_name[0]+sur_name[0]+'-'+self.fa_activity.id.to_s
    self.ps_id="#{self.id}"
  end

#validates :stid, :faid, :sample_purp, :sampletype, presence: true
  validates :box_id,:single_id, :product_id,:state_id,:position_id, presence: true
end


