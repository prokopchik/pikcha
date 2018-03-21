class Review < ApplicationRecord

    validates :name, :email, :discription, presence: true
end