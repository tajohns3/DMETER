class Account < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :bank
end

