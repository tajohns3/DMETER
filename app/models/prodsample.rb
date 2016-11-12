class Prodsample < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  belongs_to :position
  has_many :products
  has_many :product_singles
  has_many :singles, through: :product_singles
  has_many :product_boxes
  has_many :boxes, through:  :product_boxes

#this needs to be corrected
#  def ps_num
#    "#(self.state.state)" + "-" + "#(self.pocket.pocket_name)" + "-" + "#(self.id)"
#  end

  def ps_num
    self.demo_code=state_name+'-'+crop_name+'-'+first_name[0]+sur_name[0]+'-'+self.fa_activity.id.to_s
    self.ps_id="#{self.id}"
  end

#validates :stid, :faid, :sample_purp, :sampletype, presence: true

end


