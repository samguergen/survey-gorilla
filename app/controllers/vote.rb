post '/posts/:id/vote' do
  @new_vote = Vote.new(user_id: session[:user_id],
                       post_id: params[:id])

  if @new_vote.save
    if request.xhr?
      "voted"
    else
      redirect back
    end
  else
    [404, "vote did not save"]
  end
end
