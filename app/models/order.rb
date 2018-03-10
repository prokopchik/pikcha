  class Order < ApplicationRecord
  include AASM

  belongs_to :user, required: false
  belongs_to :address, required: false
  has_many   :order_mobile_phones
  belongs_to :currency

  validates :status, presence: true
  validates :user, :address, presence: true, unless: :new_order?

  def subtotal
    order_mobile_phones.sum { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }
  end

  def quantity
    order_mobile_phones.inject(0){ |result, elem| result + elem.quantity}
  end

  private

  def new_order?
    status == "new"
  end

  aasm column: :status do
    state :new, initial: true
    state :paid, :processing, :confirmed

    event :checkout do
      transitions from: :new, to: :paid
    end

    event :start_process do
      transitions from: :paid, to: :processing
    end

    event :finish do
      transitions from: :processing, to: :confirmed
    end
  end
end
