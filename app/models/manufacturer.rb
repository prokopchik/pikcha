class Manufacturer < ApplicationRecord
  has_many :mobile_phones

  validates :name, presence: true

  has_attached_file :logo, styles: { medium: "150x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end