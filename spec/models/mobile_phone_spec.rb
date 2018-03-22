require "rails_helper"

describe MobilePhone, type: :model do
  subject { build_stubbed(:mobile_phone, name: mobile_phone_name, manufacturer: manufacturer) }
  let(:manufacturer) { build_stubbed(:manufacturer, name: manufacturer_name) }
  let(:mobile_phone_name) { "5" }
  let(:manufacturer_name) { "OnePlus" }

  
  describe "full_name" do
    it "returns manufacturer name concatenated with phone name" do
      expect(subject.full_name).to eq("OnePlus 5")
    end

    context "when manufacturer doesn't have name" do
      let(:manufacturer_name) { nil }

      it "returns only mobile_phone name" do
        expect(subject.full_name).to eq("5")
      end
    end

    context "when mobile_phone doesn't have name" do
      let(:mobile_phone_name) { nil }

      it "returns only manufacturer name" do
        expect(subject.full_name).to eq("OnePlus")
      end
    end

    context "When manufacturer and mobile_phone doesn't name" do
      let(:manufacturer_name) { nil }
      let(:mobile_phone_name) { nil }

      it "returns nil" do
        expect(subject.full_name).to eq("")
      end
    end
  end
end