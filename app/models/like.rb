class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def increment_likes_counter
    posts.likes_counter += 1
  end
end
