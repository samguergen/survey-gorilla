get '/surveys' do
  @all_surveys = Survey.all
  erb :"survey/index"
end

get '/surveys/new' do
  erb :"survey/new"
end

get '/surveys/:id' do
  @the_survey = Survey.find_by(:id => params[:id])
  erb :"survey/show"
end

post '/surveys' do
  @new_survey = Survey.new(:title => params[:title], :description => params[:description], :creator_id => session[:user_id])
  if @new_survey.save
    redirect "/surveys/#{@new_survey.id}"
  else
    [404, "This survey couldn't be added. Sorry!"]
  end
end



delete '/surveys/:id/delete' do
  @survey_to_delete = Survey.find_by(:id => params[:id])
  if @survey_to_delete.id == session[:user_id]
    @survey_to_delete.destroy!
    redirect "/surveys"
  else
    [401, "Go to hell. Don't try to delete other people's surveys. Ever again."]
  end
end

