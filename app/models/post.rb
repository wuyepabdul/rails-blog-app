class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, :comments

    def most_recent_comments
        comments.last(5)
    end

    def increment_likes_counter
        posts.likes_counter += 1
    end
end