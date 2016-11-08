class DealerVisit < ActiveRecord::Base
  belongs_to :fa_activity
  belongs_to :dealer
  has_many :inventories
  has_many :products, through: :inventories
  accepts_nested_attributes_for :inventories, allow_destroy: true, reject_if: :all_blank
end
