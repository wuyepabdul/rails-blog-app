class UsersController < ApplicationController
  def index
    @users = User.all

    puts 'user_info'
    puts @users

  end

  def show
    users = User.all
    @user_info = users.find(params[:user_id])

    posts = Post.all
    @post_info = posts.find()

  end
end
