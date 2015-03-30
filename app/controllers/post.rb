get '/posts/new' do
  erb :new_post
end

get '/posts/:id' do
  @cur_post = Post.find_by(id: params[:id])
  erb :post_id
end


post '/newpost' do
  new_post = Post.new(title: params[:title],
                      user_id: session[:user_id])

  if new_post.save
    redirect "/posts/#{new_post.id}"
  else
    [402, "new_post not saved"]
  end
end

