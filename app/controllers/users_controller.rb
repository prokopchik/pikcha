class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path("me")
    end
  end

  private

  def user_params
    params.require(:user).permit( :name, :email,
      :phone_number, :role_id, :currency_id, :avatar)
  end
end

