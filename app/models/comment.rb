class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post, optional: true

  def increment_comments_counter
    posts.comments_counter += 1
  end
end
