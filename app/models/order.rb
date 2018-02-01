class Order < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :address, required: false
  has_many   :order_mobile_phones
  belongs_to :currency

  validates :status, presence: true
  validates :user, :address, presence: true, unless: :new_order?

  def subtotal
    order_mobile_phones.map { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }.sum
  end

  private

  def new_order?
    status == "new"
  end
end
