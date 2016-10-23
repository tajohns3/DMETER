class Target < ActiveRecord::Base

  has_many :fa_targets
  has_many :field_assistants, :through => :fa_targets
  accepts_nested_attributes_for :fa_targets

  attr_accessor :target_id
end
