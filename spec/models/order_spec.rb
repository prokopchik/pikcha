require "rails_helper"

describe Order, type: :model do
  let(:order) { build_stubbed(:order) }
  let(:order_mobile_phone1) { build_stubbed(:order_mobile_phone, quantity: 2, price: 250 ) }
  let(:order_mobile_phone2) { build_stubbed(:order_mobile_phone, quantity: 8, price: 300) }

  before do
    allow(order).to receive(:order_mobile_phones).and_return([order_mobile_phone1, order_mobile_phone2])
  end

  describe "quantity" do 
    it "returns total quantity of mobile phones in order" do
      expect(order.quantity).to eq(10)
    end
  end

  describe "subtotal" do
    before do
      allow(order_mobile_phone1).to receive(:valid?).and_return(true)
      allow(order_mobile_phone2).to receive(:valid?).and_return(false)
    end

    it "returns total price of order" do 
      expect(order.subtotal).to eq(500)
    end
  end
end