class PocketCrop < ActiveRecord::Base
  belongs_to :pocket
  belongs_to :crop
end
