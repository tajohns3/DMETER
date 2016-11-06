class Farmer < ActiveRecord::Base
  belongs_to :user
  belongs_to :state
  belongs_to :pocket
  belongs_to :village
  belongs_to :crop

  has_many :farmcrops
  accepts_nested_attributes_for :farmcrops, reject_if: :all_blank, allow_destroy: true

  #validates :stid, :useridstmgr, :useridamgr, :useridsr, :dealerid, :name, :villageid, presence: true

end
