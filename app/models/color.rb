class Color < ApplicationRecord
  has_and_belongs_to_many :mobile_phones

  validates :name, presence: true
end