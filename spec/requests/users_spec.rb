require 'rails_helper'

RSpec.describe 'Users Controllers', type: :request do
  describe 'GET /index' do
    it 'Should list all users' do
      get users_path

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is a list of users that were created')
    end

    it 'Should display a user' do
      get user_path(id: 1)

      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('Here is the details of a user that was created')
    end
  end
end
