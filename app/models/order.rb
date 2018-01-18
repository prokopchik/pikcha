class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_many   :order_mobile_phones
  belongs_to :currency

  validates :user, :address, :status, presence: true
end