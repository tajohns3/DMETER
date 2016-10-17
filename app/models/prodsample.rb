class Prodsample < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
end
