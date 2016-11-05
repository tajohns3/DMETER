class Village < ActiveRecord::Base
  has_many :pocket_infos
  belongs_to :state
  has_many :meet_farmers
end
