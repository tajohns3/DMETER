class PocketDistrict < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :district
end
