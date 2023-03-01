class PostsController < ApplicationController

def index

  matching_posts = Post.all

  @posts = matching_posts.order(:created_at)

  render({ :template => "/post_templates/index.html.erb" })
end

def show

  all_comments = Comment.all

render({ :template => "/post_templates/show.html.erb" })
end

def create_post

#     Parameters: {"query_post_title"=>"help needed asap!", "query_post_body"=>"Post body"}

post_title = params.fetch("query_post_title")
post_body = params.fetch("query_post_body")

new_post = Post.new

new_post.title = post_title
new_post.body = post_body

new_post.save

render({ :template => "/post_templates/submitted.html.erb" })
end

end
