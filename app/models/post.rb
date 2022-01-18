class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, through: :posts
  has_many :comments, through: :posts

  def most_recent_comments
    comments.last(5)
  end

  
end
