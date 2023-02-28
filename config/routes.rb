Rails.application.routes.draw do

get("/", { :controller => "posts", :action=> "index" })
get("/posts", { :controller => "posts", :action=> "index" })

get("/posts/details", { :controller => "posts", :action=> "show" })


end
