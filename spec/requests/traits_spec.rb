require 'rails_helper'

RSpec.describe "Traits", type: :request do
  describe "GET /traits" do
    it "returns http success" do
      get "/traits/traits"
      expect(response).to have_http_status(:success)
    end
  end

end
