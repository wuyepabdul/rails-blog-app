class Post < ApplicationRecord
    belongs_to: user
    has_many: likes
    has_many:comments

    def most_recent_comments
        comments.last(5)
    end
end