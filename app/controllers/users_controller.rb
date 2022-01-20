class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    users = User.all
    @user_info = users.find(params[:id])
    
    @posts = Post.all
  end
end
