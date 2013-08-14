get '/' do
  @posts = Post.all 
  erb :index
end

  # this is the crazy page 
get "/posts/:id" do 
  @post = Post.find_by_id(params[:id])
  erb :display_post
end 

get "/user/:id" do 
  erb :profile_page
end 

get "/create_post" do 
    erb :_create_post
end 

#------ POST ROUTES ---------------

# ----------USER LOGIN/LOGOUT----------------------
post "/login" do
  # need to setup 
  @user = User.find_by_email(params[:email])
  if @user.authenticate(params[:password])  
    session[:user_id] =  @user.id
    redirect to '/create_post'
  else 
    @error = "you gotta learn how to tYpe."
    erb :index 
  end 
  
end 

post "/logout" do
  session[:user_id] = nil
  redirect to '/'
end 

# ----------CREATING USERS/POSTS/COMMENTS----------------------

post "/create_user" do 
  @user =  User.create(user_name: params[:username], email: params[:email], password: params[:password], password_confirmation: params[:password])
  session[:user_id] = @user.id 

  redirect to '/create_post'
end 

post "/create_post" do
  @post = Post.create(title: params[:title], post_link: params[:post_link], user_id: current_user.id)
  redirect to "/posts/#{@post.id}"    
end 

post "/create_comment" do 
  current_user
end



 # <% if current_user == nil %>
 # <% route = "/" %>
 # <% else %>
 # <% route = ""



