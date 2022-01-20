class Like < ApplicationRecord
  belongs_to :user, optional: true 
  belongs_to :post, optional: true 

  def increment_likes_counter
    posts.likes_counter += 1
  end
end
