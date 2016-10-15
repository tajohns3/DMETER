class District < ActiveRecord::Base
  has_many :pockets

  has_many :pockets, through: :pocket_districts
  has_many :pocket_districts

end
