get '/users/:id/comments' do
  @user_comments = Comment.where(user: params[:id])
  @cur_user = User.find_by(id: params[:id])
  erb :user_comments
end

get '/users/:id' do
  @cur_user = User.find_by(id: params[:id])
  erb :user_id
end

get '/users/:id/posts' do
  @user_posts = Post.where(user: params[:id])
  @cur_user = User.find_by(id: params[:id])
  erb :user_posts
end

get '/signup' do
  erb :'auth/signup'
end

get '/login' do
  erb :'auth/login'
end

post '/signup' do
  new_user = User.new(name: params[:name],
                      password: params[:password])

  if new_user.save
    redirect "/login"
  else
    [404, "user did not save"]
  end
end

post '/login_post' do
  user = User.find_by(name: params[:name])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    session[:error] = "Login failed."
    redirect '/login'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
