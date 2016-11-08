class ProductPrescription < ActiveRecord::Base
  belongs_to :meet_farmer
  belongs_to :dealer
  belongs_to :farmer
  belongs_to :crop
end
