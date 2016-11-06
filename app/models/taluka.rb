class Taluka < ActiveRecord::Base
  has_many :pocket_infos
  has_many :pocket_dats
end
