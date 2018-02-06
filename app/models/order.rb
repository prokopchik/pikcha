class Order < ApplicationRecord
  include AASM

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
