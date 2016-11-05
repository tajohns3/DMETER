class ProductBox < ActiveRecord::Base
  belongs_to :product
  belongs_to :box
end
