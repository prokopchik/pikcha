class AddPriceToOrderMobilePhones < ActiveRecord::Migration[5.1]
  def change
    add_column :order_mobile_phones, :price, :float
  end
end
