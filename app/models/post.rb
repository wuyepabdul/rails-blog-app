class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes
  has_many :comments

  def recent_comments
    comments.last(5)
  end

  def posts_counter
    user.posts_counter += 1
  end
end
