get '/' do
  # Look in app/views/index.erb
  erb :index
end

get "posts/:id" do 
end 

get "/user/:id" do 
end 

get "/user/:id/comments" do 
end 

get "/user/:id/posts" do 
end 

#------ POST ROUTES ---------------


post "/login" do 
end 

post "/create_user" do 
end 

post "/create_post" do 
end 

post "/create_comment" do 
end 

