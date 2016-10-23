class Crop < ActiveRecord::Base
has_many :pockets
has_many :fa_targets

has_many :pockets, through: :pocket_crops
has_many :pocket_crops

end
