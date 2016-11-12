class Demoresult < ActiveRecord::Base
  belongs_to :user
  belongs_to :state
  belongs_to :pocket
  belongs_to :position

  has_many :demonstrations
  has_many :resultphotos
  accepts_nested_attributes_for :resultphotos, reject_if: :all_blank, allow_destroy: true

  has_attached_file :photo, :styles => {  :thumb =>  "100x100#",
                                          :medium => "300x300>" }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  #validates :stid, :amid, :srid, :pocketid, :demostatus, presence: true
end