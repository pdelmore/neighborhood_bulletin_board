class PostsController < ApplicationController

def index

  matching_posts = Post.all

  @posts = matching_posts.order(:created_at => :desc)

  render({ :template => "/post_templates/index.html.erb" })
end

def show

  all_comments = Comment.all

url_post_id = params.fetch("post_id")

@all_posts = Post.all

@post_details = @all_posts.where({ :id => url_post_id}).first



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
