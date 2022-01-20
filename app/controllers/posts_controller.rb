class PostsController < ApplicationController
  def index
    users = User.all
    @user_info = users.find { |i| i['id'] == params[:user_id] }

    puts 'user_info'
    puts @user_info

    posts = Post.all
    @post_info = posts.find { |i| i['id'] == params[:id] }

    puts 'post_info'
    puts @post_info
  end

  def show
    users = User.all
    @user_info = users.find { |i| i['id'] == params[:user_id] }
    puts 'user_info'
    puts @user_info

    posts = Post.all
    @post_info = posts.find { |i| i['id'] == params[:id] }

    puts 'post_info'
    puts @post_info
  end
end
