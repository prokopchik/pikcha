class CartsController < ApplicationController
  def show
    @order_mobile_phones = current_order.order_mobile_phones
  end
end
