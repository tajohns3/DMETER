class State < ActiveRecord::Base
  has_many :prodsamples
  has_many :users
end
