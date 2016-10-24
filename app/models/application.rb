class Application < ActiveRecord::Base
  has_many :products, through: :product_applications
  has_many :product_applications
  belongs_to :pre_demonstration
  belongs_to :demonstration
end
