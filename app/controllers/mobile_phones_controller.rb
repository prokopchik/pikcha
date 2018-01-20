class MobilePhonesController < ApplicationController
  def index
    @mobile_phones = MobilePhone.all
  end

  def show
    @mobile_phone = MobilePhone.find(params[:id])
  end
end