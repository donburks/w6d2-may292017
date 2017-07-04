require_relative './setup'

puts "In app.rb"

## CREATION (create, new, and save)

## Creating a new user
user = User.create username: 'don', email: 'don@lighthouselabs.ca'

puts "My user ID is #{user.id}"

## Manually create and associate a blog post
post = BlogPost.create title: "AR is cool", content: "This is pretty neat, huh?", user_id: user.id

## Leverage AR's associations to create a pre-associated blog post
user.blog_posts.create title: "AR is super cool", content: "Bet you didn't know it could do this."

## See the collection of associated data
p user.blog_posts

ar_post = BlogPost.find(1) # Find By ID

p ar_post

ar_post_2 = BlogPost.find_by title: "AR is super cool"

p ar_post_2

ar_posts = BlogPost.where(user_id: user.id)

p ar_posts

recent_posts = BlogPost.where("created_at < ?", Date.today)

p recent_posts

new_user = User.new username: "joel", email: "joel@lighthouselabs.ca"

if (new_user.save) 
  puts "#{new_user.username} was saved successfully."
else
  puts "Failed to save."
end
