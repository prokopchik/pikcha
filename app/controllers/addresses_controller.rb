class AddressesController < ApplicationController
  def index
    @addresses = current_user.addresses
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
     @address = current_user.addresses.new(address_params)

    if @address.save
      redirect_to addresses_path(@address)
    else
      render :new
    end
  end

  def edit
    @address = current_user.addresses.find(params[:id])
  end

  def update
    @address = current_user.addresses.find(params[:id])

    if @address.update(address_params)
      redirect_to addresses_path(@address)
    else
      render :new
    end
  end

  def destroy
    @address = current_user.addresses.find(params[:id])

    @address.destroy

    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:address_1, :address_2,
      :city, :country, :zip_code)
  end
end