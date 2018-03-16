module ApplicationHelper
  def display_price(price)
    if current_user
      currency = current_user && current_user.currency ? current_user.currency : currency.find_by_name("BYN")

      converted_price = price / currency.rate

      number_to_currency converted_price, unit: currency.name
    end
  end
end
