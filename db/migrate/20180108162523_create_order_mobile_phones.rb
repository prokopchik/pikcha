class CreateOrderMobilePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :order_mobile_phones do |t|
      t.integer :order_id
      t.integer :quantity
      t.integer :mobile_phone_id
      t.integer :color_id

      t.timestamps
    end
  end
end
