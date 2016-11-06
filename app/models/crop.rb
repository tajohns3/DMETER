class Crop < ActiveRecord::Base
has_many :pockets
has_many :fa_targets
has_many :pre_demonstrations
has_many :farmers
has_many :farmcrops

has_many :pockets, through: :pocket_crops
has_many :pocket_crops
has_many :meet_sr_farmers

end
