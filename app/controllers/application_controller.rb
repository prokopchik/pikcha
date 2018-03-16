class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  #before_action :set_locale

  def set_locale
    if current_user && current_user.locale
      I18n.locale = current_user.locale
    else
      I18n.locale = I18n.default_locale
    end
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new(currency_id: 1)
    end
  end
end
