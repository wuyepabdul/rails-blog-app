class User < ApplicationRecord
    has_many: posts

    def most_recent_posts
        posts.last(3)
    end
end
