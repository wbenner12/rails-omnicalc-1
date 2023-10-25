Rails.application.routes.draw do

get("/", { :controller => "game", :action => "home"})

get("/square/new", { :controller => "game", :action => "home"})
get("/square/results", { :controller => "game", :action => "square"})

get("/square_root/new", { :controller => "game", :action => "new_square_root"})
get("/square_root/results", { :controller => "game", :action => "square_root_calc"})


end
