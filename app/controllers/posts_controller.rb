class PostsController < ApplicationController
  def index
    @users = [
      { 'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3' },
      { 'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1' }
    ]
    result_arr = @users.select { |i| i['id'] == params[:user_id] }
    @user_info = result_arr.reduce({}, :merge)

    @posts = [
      { 'id' => '1',
        'title' => 'First Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisi it. Aliquid iure ..' },
      { 'id' => '2',
        'title' => 'Second Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliqu...' }
    ]
    result_arr = @posts.select { |i| i['id'] == params[:id] }
    @post_info = result_arr.reduce({}, :merge)
    puts @post_info
  end

  def show
    @users = [
      { 'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3' },
      { 'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1' }
    ]
    result_arr = @users.select { |i| i['id'] == params[:user_id] }
    @user_info = result_arr.reduce({}, :merge)

    @posts = [
      { 'id' => '1',
        'title' => 'First Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliqu...' },
      { 'id' => '2',
        'title' => 'Second Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliqu...' }
    ]
    post = @posts.select { |i| i['id'] == params[:id] }
    @post_info = post.reduce({}, :merge)

    puts 'post_info'
    puts @post_info
  end
end
