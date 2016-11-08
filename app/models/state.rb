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
  has_many :dealers
  has_many :demoresults
  has_many :farmers


  def area_managers
    users.where(role: 'area_manager')
  end

  def sales_rep
    users.where(role: 'sale_representative')
  end

  def state_manager
    users.where(role: 'state_manager')
  end


end
