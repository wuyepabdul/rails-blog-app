# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all

20.times do |i|
    puts "Creating User #{i+1}"
    puts
    puts "======================================="
    user = User.create(
        name: "User #{i+1}",
        photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus",
        posts_counter: "#{rand(10)}"
    )

    puts "Creating Post #{i+1}"
    puts
    puts "======================================="

    post = Post.create(
        title: "Post #{i+1}",
        text: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta te",
        comments_counter: "#{rand(10)}",
        likes_counter: "#{rand(10)}",
        user_id: "#{rand(20)}"
    )
end

10.times do |i|
    puts "Creating Post #{i+1}"
    puts
    puts "======================================="
    comment = Comment.create(
        text:"Lorem ipsum dolor sit amet consectetur adipisicing elit.",
        user_id:"#{rand(20)}",
        post_id:"#{rand(20)}"
    )

    like = Like.create(
        user_id: "#{rand(20)}",
        post_id: "#{rand(20)}",
    )
end