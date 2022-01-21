class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])

    posts_list = Post.all.order(created_at: :desc)
    @posts = posts_list.select { |i| i['id'] == @user[:id] }
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end
end
