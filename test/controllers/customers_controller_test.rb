require "rails_helper"

RSpec.describe CustomersController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @customers" do
      customer1, customer2 = Customer.create!, Customer.create!
      get :index
      expect(assigns(:customers)).to match_array([customer1, customer2])
    end
  end
end
