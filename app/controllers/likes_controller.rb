class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    like = post.likes.new(user: current_user)

    respond_to do |format|
      format.html do
        if like.save
          flash.now[:notice] = 'Liked'
        else
          flash.now[:alert] = "Could not like post"
        end
      end
    end
  end
end
