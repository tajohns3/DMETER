class Application < ActiveRecord::Base
  has_many :products, through: :product_applications
  has_many :product_applications
  belongs_to :pre_demonstration
  belongs_to :demonstration
  accepts_nested_attributes_for :product_applications, allow_destroy: true, reject_if: :all_blank

end
