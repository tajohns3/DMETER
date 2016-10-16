class FaActivity < ActiveRecord::Base
  has_many :meet_farmers
  accepts_nested_attributes_for :meet_farmers, allow_destroy: true, reject_if: :all_blank
end
