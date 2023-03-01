Rails.application.routes.draw do

get("/", { :controller => "posts", :action=> "index" })
get("/posts", { :controller => "posts", :action=> "index" })

get("/posts/details", { :controller => "posts", :action=> "show" })

get("/add_post", { :controller => "posts", :action => "create_post"})

get("/post/details/:post_id", { :controller => "posts", :action => "show" })
get("/delete_post/:post_id", { :controller => "posts", :action => "delete_post"})

get("/post/edit/:post_id", { :controller => "posts", :action => "edit_post"})

end
