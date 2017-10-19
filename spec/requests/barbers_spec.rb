require 'rails_helper'

RSpec.describe "Barbers", type: :request do
  describe "GET /barbers" do
    it "works! (now write some real specs)" do
      get barbers_path
      expect(response).to have_http_status(200)
    end
  end
end
