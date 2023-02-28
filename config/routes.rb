Rails.application.routes.draw do


get("/posts", { :controller => "posts", :action=> "index" })


end
