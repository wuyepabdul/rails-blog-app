class PostsController < ApplicationController
  def index
    users = User.all
    @user_info = users.find { |i| i['id'] == params[:user_id] }

    posts = Post.all
    # @post_info = posts.find { |i| i['id'] == params[:id] }
  end

  def show
    users = User.all
    @user_info = users.find { |i| i['id'] == params[:user_id] }

    posts = Post.all
    @post_info = posts.find { |i| i['id'] == params[:id] }
  end
end
