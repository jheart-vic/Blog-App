# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
second_user = User.create(name: 'Lilly', email: 'lilly01@gmail.com', password: '@sam12345', photo: 'shrtco.de/do7AF4', bio: 'Teacher from Poland.')
first_user = User.create(name: 'Billy', email: 'billy01@gmail.com', password: '@edd14324', photo: 'shrtco.de/do7AF4', bio: 'Teacher from Holand.')

first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my second post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my third post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post')

Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: second_user, text: 'Hi Lilly!' )