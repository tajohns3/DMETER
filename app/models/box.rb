class Box < ActiveRecord::Base
  has_many :product_boxes
  has_many :products, through:  :product_boxes
  has_many :product_applications
  has_many :prodsamples
end
