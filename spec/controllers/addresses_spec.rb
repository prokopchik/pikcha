require "rails_helper"

describe AddressesController, type: :controller do
  let(:user) { build_stubbed(:user, addresses: [address]) }
  let(:address) { build_stubbed(:address) }

  before do
    sign_in (user)
    allow(controller).to receive(:current_user).and_return(user)
  end 
  
  
  describe "GET index" do 
    it "assignes addresses and render tameplate index" do
      get :index
      expect(assigns(:addresses).size).to be 1
      expect(response).to render_template(:index)
    end
  end

  describe "GET new" do
    it "assignes new address and render template new" do
      get :new
      expect(assigns(:address)).to be_a_new(Address)
      expect(response).to render_template(:new) 
    end
  end

  describe "POST create" do
    it "creates new address" do
      expect do
        post :create, params: { address: { address_1: "slobodskaya", address_2: "141-140", city: "Minsk", country: "Belarus", zip_code: "220025" } }
      end.to change { Address.count }.by(1)
      expect(response).to have_http_status(:redirect)
    end
    
    it "reject empty required fields" do
      post :create, params: {address: { address_1: "slobodskaya", address_2: "141-140", city: "Minsk", country: "Belarus", zip_code: "" } } 
      expect(response).to render_template(:new)
      expect(assigns(:address).errors).not_to be_empty
    end 
  end
end
