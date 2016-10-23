class State < ActiveRecord::Base
  has_many :users
  has_many :fa_activities
  def area_managers
    users.where(role: 'area_manager')
  end
  has_many :prodsamples
  has_many :users
  has_many :pockets
  has_many :field_assistants
  has_many :positions
  has_many :demoresults
end
