get '/' do
  erb :'index'
end


get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :user_id
end


get '/signup' do
  erb :'auth/signup'
end

get '/login' do
  erb :'auth/login'
end

post '/signup' do
  @user = User.new(params)

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
