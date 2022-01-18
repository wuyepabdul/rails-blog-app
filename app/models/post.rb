class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, through: :posts
    has_many :comments, through: :posts

    def most_recent_comments
        comments.last(5)
    end

    def increment_likes_counter
        posts.likes_counter += 1
    end

    def increment_comments_counter
        posts.comments_counter += 1
    end
end