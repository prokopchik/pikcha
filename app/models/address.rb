class Address < ApplicationRecord
  belongs_to :user
  has_many   :orders

  validates :address_1, :city, :country, :zip_code, presence: true

end