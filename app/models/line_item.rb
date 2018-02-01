class LineItem < ApplicationRecord
  belongs_to :order_mobile_phones
  belongs_to :cart
end
