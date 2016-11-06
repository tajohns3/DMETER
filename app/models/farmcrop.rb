class Farmcrop < ActiveRecord::Base
  belongs_to :farmer
  belongs_to :crop
end
