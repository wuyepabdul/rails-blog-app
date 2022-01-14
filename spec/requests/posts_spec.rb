require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "Posts Controllers" do
    it "Should list all posts" do
      get user_posts_path(user_id:21)

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is a list of created posts')
    end

    it "Should display a user" do
      get user_post_path(user_id:21, id:1)

      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('Here is a post that was created')
    end
  end
end
