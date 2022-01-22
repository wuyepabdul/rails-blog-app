class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])

    @posts = @user.recent_posts
    
    print 'posts === '
    puts @posts
  end

  def new
    @post = Post.new
  end

  def create
    new_post = current_user.posts.new(params.require(:data).permit(:title, :text))
    new_post.likes_counter = 0
    new_post.comments_counter = 0
    new_post.posts_counter
    respond_to do |format|
      format.html do
        if new_post.save
          redirect_to "/users/#{new_post.user.id}/posts/", notice: 'Success!'
        else
          render :new, alert: 'Error occured!'
        end
      end
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
