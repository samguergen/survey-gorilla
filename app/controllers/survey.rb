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

