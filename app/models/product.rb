class Product < ActiveRecord::Base
  has_many :inventories
  has_many :dealer_visits, through: :inventories
end
