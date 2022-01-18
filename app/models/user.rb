class User < ApplicationRecord
    has_many: posts
    has_many: likes
    has_many: comments

    def most_recent_posts
        posts.last(3)
    end

    def increment_posts_counter
        user.posts_counter += 1
    end
end
