require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it "Should list all posts" do
      # expect('you').to eq('you')
      get user_posts_path
      get user_post_path
      expect(response).to have_http_status(200)
    end
  end
end
