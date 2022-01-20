class Post < ApplicationRecord
  belongs_to :user, optional: true 
  has_many :likes, through: :posts
  has_many :comments, through: :posts

  def most_recent_comments
    comments.last(5)
  end

  def increment_posts_counter
    user.posts_counter += 1
  end
end
