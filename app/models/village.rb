class Village < ActiveRecord::Base
  has_many :pocket_infos
  has_many  :farmers
end
