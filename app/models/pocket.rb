class Pocket < ActiveRecord::Base
  belongs_to :district
  belongs_to :crop

  has_many :districts, through: :pocket_districts
  has_many :pocket_districts
  has_many :demoresults

  has_many :crops, through: :pocket_crops
  has_many :pocket_crops


  has_many :pocket_dats, :dependent => :destroy
  accepts_nested_attributes_for :pocket_dats, allow_destroy: true, reject_if: :all_blank


  #Calculation for Total Number of Potential Dealers

  def total_pdeals
    self.type_a + self.type_b + self.type_c + self.type_d
  end

end
