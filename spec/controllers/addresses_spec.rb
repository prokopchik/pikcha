require "rails_helper"

describe AddressesController, type: :controller do
  let(:user) { build_stubbed(:user, addresses: [address]) }
  let(:address) { build_stubbed(:address) }

  before do
    sign_in (user)
    allow(controller).to receive(:current_user).and_return(user)
  end 
  
  
  describe "index" do 
    it "assignes addresses and render tameplate index" do
      get :index
      expect(assigns(:addresses).size).to be 1
      expect(response).to render_template(:index)
    end
  end
end