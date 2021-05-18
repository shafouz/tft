require 'rails_helper'

RSpec.describe "Champions", type: :request do
  describe "GET /champions" do
    it "returns http success" do
      get "/champions/champions"
      expect(response).to have_http_status(:success)
    end
  end

end
