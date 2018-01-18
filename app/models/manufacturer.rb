class Manufacturer < ApplicationRecord
  has_many :mobile_phones

  validates :name, presence: true
end