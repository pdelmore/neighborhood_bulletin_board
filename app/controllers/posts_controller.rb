class PostsController < ApplicationController

def index

  render({ :template => "/post_templates/index.html.erb" })
end

def show

render({ :template => "/post_templates/show.html.erb" })
end

end
