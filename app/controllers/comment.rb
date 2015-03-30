get '/posts/:id/comments/new' do
  @cur_post = Post.find_by(id: params[:id])
  erb :new_comment, layout: !request.xhr?
end

post '/posts/:id/new_comment' do
  @new_comment = Comment.new(content: params[:content],
                            user_id: session[:user_id],
                            post_id: params[:id])

  if @new_comment.save
    if request.xhr?
      erb :_list_data, layout: false, locals: {comment: @new_comment}
    else
      redirect "/posts/#{params[:id]}"
    end
  else
    [404, "new comment did not save"]
  end
end

delete '/comments/:id' do
  cur_comment = Comment.find_by(id: params[:id])
  p_id = cur_comment.post_id

  cur_comment.destroy
  if request.xhr?
    "deleted"
  else
    redirect "/posts/#{p_id}"
  end
end
