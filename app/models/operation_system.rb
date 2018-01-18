class OperationSystem < ApplicationRecord
  has_many   :mobile_phone

  validates :name, presence: true
end