class Product < ActiveRecord::Base
  has_many :inventories
  has_many :dealer_visits, through: :inventories
  has_many :product_singles
  has_many :singles, through: :product_singles
  has_many :product_boxes
  has_many :boxes, through:  :product_boxes

  accepts_nested_attributes_for :product_singles, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :product_boxes, allow_destroy: true, reject_if: :all_blank
end
