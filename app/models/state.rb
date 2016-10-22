class State < ActiveRecord::Base
  has_many :pockets
  has_many :field_assistants
  has_many :positions
end
