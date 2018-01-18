class OrderMobilePhoneColorValidator < ActiveModel::Validator
  def validate(order_mobile_phone)
    unless order_mobile_phone.color.in?(order_mobile_phone.mobile_phone.colors)
      order_mobile_phone.errors[:color] << "Wrong color selected"
    end
  end
end
