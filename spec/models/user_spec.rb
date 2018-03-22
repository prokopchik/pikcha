require "rails_helper"

describe User, type: :model do
  let(:user) { build_stubbed(:user, role: role) }
  let(:role) { build_stubbed(:role, name: "Admin" ) }


  describe "admin?" do 
    it "returns true if user admin" do
      expect(user.admin?).to eq(true)
    end
  end
end