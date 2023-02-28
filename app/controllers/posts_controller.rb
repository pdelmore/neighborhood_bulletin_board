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

end
