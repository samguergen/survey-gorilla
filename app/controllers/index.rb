get '/' do
  erb :index, locals: {post_list: Post.all}
end

