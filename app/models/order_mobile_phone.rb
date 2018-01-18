class OrderMobilePhone < ApplicationRecord
  belongs_to :order
  belongs_to :mobile_phone
  belongs_to :color

  validates :order, :quantity, :mobile_phone, :color, :price, presence: true

  validates_with OrderMobilePhoneColorValidator
end