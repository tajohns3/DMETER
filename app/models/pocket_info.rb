class PocketInfo < ActiveRecord::Base
  belongs_to :taluka
  belongs_to :village

  has_many :pocket_dats
  has_many :pockets, :through => :pocket_dats
  accepts_nested_attributes_for :pocket_dats

  attr_accessor :pocket_info_id
end
