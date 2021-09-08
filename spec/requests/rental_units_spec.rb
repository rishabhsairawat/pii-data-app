require 'rails_helper'

RSpec.describe "RentalUnits", type: :request do
  describe "GET /rental_units" do
    it "works! (now write some real specs)" do
      get rental_units_path
      expect(response).to have_http_status(200)
    end
  end
end
