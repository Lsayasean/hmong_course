require 'rails_helper'

RSpec.describe "Facts", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/facts/index"
      expect(response).to have_http_status(:success)
    end
  end

end
