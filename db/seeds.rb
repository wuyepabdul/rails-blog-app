# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.destroy_all
# Post.destroy_all
# Comment.destroy_all
# Like.destroy_all

User.create(name: 'Jhon', photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", bio: 'I am a developer', posts_counter: 2)

User.create(name: 'Bella', photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", bio: 'I am a teacher', posts_counter: 5)

User.create(name: 'Kim', photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", bio: 'I am a nurse', posts_counter: 1)

User.create(name: 'Mohamed', photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", bio: 'I am a technician', posts_counter: 3)

User.create(name: 'Mohamed', photo: "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9zdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60", bio: 'I am a technician', posts_counter: 7)

Post.create(title: 'Post of Jhon', text: 'this is a post by jhon', comments_counter: 1, likes_counter: 1, user_id:1)
Post.create(title: 'Post of Bella', text: 'this is a post by Bella', comments_counter: 7, likes_counter: 5, user_id:2)
Post.create(title: 'Post of Kim', text: 'this is a post by Kim', comments_counter: 2, likes_counter: 7, user_id:3)
Post.create(title: 'Post of Mohamed', text: 'this is a post by Mohamed', comments_counter: 0, likes_counter: 9, user_id:4)

Comment.create(user_id:1, post_id:1, text:'I love it')
Comment.create(user_id:2, post_id:1, text:'Brilliant')
Comment.create(user_id:3, post_id:1, text:'Grateful')
Comment.create(user_id:3, post_id:1, text:'Awesome')
Comment.create(user_id:3, post_id:1, text:'Life')
Comment.create(user_id:1, post_id:2, text:'yiork')
Comment.create(user_id:2, post_id:2, text:'Oh my')
Comment.create(user_id:2, post_id:2, text:'Nature is great')
Comment.create(user_id:2, post_id:2, text:'asdaksjc')
Comment.create(user_id:2, post_id:2, text:'adcsd')
Comment.create(user_id:3, post_id:3, text:'lklkfs')
Comment.create(user_id:4, post_id:3, text:'asas da')
Comment.create(user_id:4, post_id:3, text:'asefcas da')
Comment.create(user_id:4, post_id:3, text:'asas efeqwda')
Comment.create(user_id:1, post_id:4, text:'sd ddawdqa')
Comment.create(user_id:3, post_id:4, text:'ascsdefc edwc')
Comment.create(user_id:4, post_id:4, text:'sdads efced')

Like.create( user_id: "1", post_id: "4")
Like.create( user_id: "2", post_id: "3")
Like.create( user_id: "3", post_id: "2")
Like.create( user_id: "2", post_id: "1")
Like.create( user_id: "1", post_id: "2")
Like.create( user_id: "3", post_id: "1")
Like.create( user_id: "4", post_id: "4")
Like.create( user_id: "3", post_id: "3")
Like.create( user_id: "1", post_id: "1")