require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "Should list all users" do
      get users
      expect(response).to have_http_status(200)
    end
  end
end
