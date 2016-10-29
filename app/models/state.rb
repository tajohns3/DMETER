class State < ActiveRecord::Base
  has_many :users
  has_many :fa_activities
  has_many :villages
  has_many :sr_activities
  has_many :prodsamples
  has_many :users
  has_many :pockets
  has_many :field_assistants
  has_many :positions
  has_many :demoresults


  def area_managers
    users.where(role: 'area_manager')
  end
end
