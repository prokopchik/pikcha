class MobilePhone < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :operation_system
  has_and_belongs_to_many   :colors
  has_many :order_mobile_phones
  has_many :mobile_phone_pictures

  validates :name, :display_size, :processor, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :memory_storage, numericality: { greater_than_or_equal_to: 16, less_than_or_equal_to: 256 }
  validates :operative_memory, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 16 }

end