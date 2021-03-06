class MobilePhonePicture < ApplicationRecord
  belongs_to :mobile_phone

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing_mobile_phone.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
