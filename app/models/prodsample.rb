class Prodsample < ActiveRecord::Base
  belongs_to :state
  belongs_to :user

#this needs to be corrected
#  def ps_num
#    "#(self.state.state)" + "-" + "#(self.pocket.pocket_name)" + "-" + "#(self.id)"
#  end

#validates :stid, :faid, :sample_purp, :sampletype, presence: true

end


