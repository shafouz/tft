require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /items" do
    it "returns http success" do
      get "/items/items"
      expect(response).to have_http_status(:success)
    end
  end

end
