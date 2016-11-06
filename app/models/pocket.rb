class Pocket < ActiveRecord::Base
  belongs_to :district
  belongs_to :crop
  belongs_to :state
  has_many :field_assistants


  has_many :districts, through: :pocket_districts
  has_many :pocket_districts

  has_many :districts, through: :pocket_districts
  has_many :pocket_districts
  has_many :demoresults
  has_many :farmers

  has_many :crops, through: :pocket_crops
  has_many :pocket_crops
  has_many :fa_activities
  belongs_to :user
  has_many :pocket_dats, :dependent => :destroy
  accepts_nested_attributes_for :pocket_dats, allow_destroy: true, reject_if: :all_blank


  #Calculation for Total Number of Potential Dealers

  def total_pdeals
    self.type_a + self.type_b + self.type_c + self.type_d
  end

  def pockets
    Pocket.all
  end

  def pock_finder
   self.field_assistants.collect(&:positions).flatten.uniq

  end
end
