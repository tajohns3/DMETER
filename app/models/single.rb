class Single < ActiveRecord::Base
  has_many :product_singles
  has_many :products, through: :product_singles
  belongs_to :product_application
end
