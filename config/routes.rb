Rails.application.routes.draw do

get("/", { :controller => "posts", :action=> "index" })
get("/posts", { :controller => "posts", :action=> "index" })

get("/posts/details", { :controller => "posts", :action=> "show" })

get("/add_post", { :controller => "posts", :action => "create_post"})

get("/posts/details/:post_id", { :controller => "posts", :action=> "show" })


end
