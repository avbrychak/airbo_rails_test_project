require "spec_helper"

describe ChargesController do
  let(:customer){ FactoryGirl.create(:customer)  }

  before :each do
    customer
  end

  describe "create" do
    it "assigns @teams" do
      Charge.count.should eq 0
      post :create, charge: {currency: "usd", amount: "100.40", customer_id: customer.id}
      Charge.count.should eq 1
    end
  end
end