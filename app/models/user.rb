class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  def most_recent_posts
    posts.order('created_at Asc').limit(3)
  end
end
