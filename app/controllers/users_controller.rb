class UsersController < ApplicationController
  def index
    @users = [
      { 'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3' },
      { 'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1' }
    ]
  end

  def show
    @users = [
      { 'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3' },
      { 'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1' }
    ]
    matched_user = @users.select { |i| i['id'] == params[:id] }
    @user_info = matched_user.reduce({}, :merge)

    @posts = [
      { 'id' => '1',
        'title' => 'First Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure , ...' },
      { 'id' => '2',
        'title' => 'Second Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure , ...' }
    ]
    result_arr = @posts.select { |i| i['id'] == params[:user_id] }
    @post_info = result_arr.reduce({}, :merge)
  end
end
