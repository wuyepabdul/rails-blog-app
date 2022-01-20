class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @posts = Post.all

    @user_info = User.find(params[:id])
  end
end
