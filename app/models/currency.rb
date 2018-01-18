class Currency < ApplicationRecord
  has_many :users
  has_many :orders

  validates :name, :rate, presence: true
end