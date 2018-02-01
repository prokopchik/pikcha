class OrderMobilePhone < ApplicationRecord
  belongs_to :order
  belongs_to :mobile_phone
  belongs_to :color

  validates  :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :order, :mobile_phone, :color, :price, presence: true

  validates_with OrderMobilePhoneColorValidator

  def unit_price
    if persisted?
      self[:price]
    else
      mobile_phone.price
    end
  end

  def total_price
    unit_price * quantity
  end
end