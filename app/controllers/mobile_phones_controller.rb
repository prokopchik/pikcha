class MobilePhonesController < ApplicationController
  def index
    @mobile_phones = MobilePhone.all
    @order_mobile_phones = current_order.order_mobile_phones.new
  end

  def show
    @mobile_phone = MobilePhone.find(params[:id])
  end
end