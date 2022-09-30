# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Billy', email: 'billy01@gmail.com', password: '@edd12345', photo: 'shrtco.de/do7AF4', bio: 'Teacher from Holand.')
second_user = User.create(name: 'Lilly', email: 'lilly01@gmail.com', password: '@sam12345', photo: 'shrtco.de/do7AF4', bio: 'Teacher from Poland.')
third_user = User.create(name: 'Chris', email: 'chris01@gmail.com', password: '@chris12345', photo: 'shrtco.de/do7AF4', bio: 'Teacher from London.')
fourth_user = User.create(name: 'Kim', email: 'kim01@gmail.com', password: '@kim12345', photo: 'shrtco.de/do7AF4', bio: 'Teacher from Kenya.')

first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my second post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my third post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my fourth post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my fifth post')
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my sixth post')

second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my second post')
second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my third post')
second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my fourth post')
second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my fifth post')
second_post = Post.create(user: second_user, title: 'Hello', text: 'This is my sixth post')

third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my first post')
third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my second post')
third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my third post')
third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my fourth post')
third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my fifth post')
third_post = Post.create(user: third_user, title: 'Hello', text: 'This is my sixth post')

fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my first post')
fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my second post')
fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my fourth post')
fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my fifth post')
fourth_post = Post.create(user: fourth_user, title: 'Hello', text: 'This is my sixth post')



Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )
Comment.create(post: first_post, user: first_user, text: 'Hi Lilly!' )

Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )
Comment.create(post: second_post, user: second_user, text: 'Hi Lilly!' )

Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )
Comment.create(post: third_post, user: third_user, text: 'Hi Lilly!' )

Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )
Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )
Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )
Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )
Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )
Comment.create(post: fourth_post, user: fourth_user, text: 'Hi Lilly!' )