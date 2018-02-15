class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def show
    @order_mobile_phones = current_order.order_mobile_phones.order(:created_at)
    @addresses = current_user.addresses
  end

  def create
    order = current_order

    order.user = current_user
    order.address = current_user.addresses.find(params[:address_id]) # TODO: fix it to allow user to choose address or create new
    order.checkout

    order.save

    session[:order_id] = nil
    redirect_to cart_path("me")
  end
end
