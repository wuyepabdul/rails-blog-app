class PostsController < ApplicationController
  def index
    @user_info = User.find(params[:user_id])
  end

  def show
    @user_info = User.find(params[:user_id])

    @post_info = Post.find(params[:id])
    print 'post info ==>  '
    puts @post_info['id']
  end
end
