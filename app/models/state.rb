class State < ActiveRecord::Base
  has_many :users

  def area_managers
    users.where(role: 'area_manager')
  end
  has_many :prodsamples
  has_many :users
end
