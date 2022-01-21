class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])

    @posts_list = Post.all.order(created_at: :desc).recent_posts
    # recent_posts = posts_list.recent_posts
    @posts = @posts_list..select { |i| i['id'] == @user[:id] }
  end

  def show
    @post = Post.find(params[:id])
  end
end
