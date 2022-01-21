class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])

    @posts = @user.recent_posts
  end

  def show
    @post = Post.find(params[:id])
  end
end
