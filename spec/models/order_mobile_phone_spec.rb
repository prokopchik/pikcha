require "rails_helper"

describe OrderMobilePhone, type: :model do
  let(:order_mobile_phone) { build_stubbed(:order_mobile_phone, price: 100, quantity: 2) }

  describe "total_price" do 
    it "return unit price multiplied by quantity" do 
      expect(order_mobile_phone.total_price).to eq(200)
    end
  end
end
