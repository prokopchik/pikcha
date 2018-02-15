class OrderMobilePhonesController < ApplicationController
  def create
    @order = current_order
    @order_mobile_phone = @order.order_mobile_phones.new(order_mobile_phone_params)
    @order_mobile_phone.price = @order_mobile_phone.unit_price
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_mobile_phone = @order.order_mobile_phones.find(params[:id])
    @order_mobile_phone.update_attributes(order_mobile_phone_params)
  end

  def destroy
    @order = current_order
    @order_mobile_phone = @order.order_mobile_phones.find(params[:id])
    @order_mobile_phone.destroy
    @order_mobile_phones = @order.order_mobile_phones
  end

  private

  def order_mobile_phone_params
    params.require(:order_mobile_phone).permit(:quantity, :mobile_phone_id, :color_id)
  end
end
