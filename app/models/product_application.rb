class ProductApplication < ActiveRecord::Base
  belongs_to :product
  belongs_to :application
  belongs_to :single
  belongs_to :box
end
