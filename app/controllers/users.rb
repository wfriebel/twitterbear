post '/login' do
  user_id = User.authenticate(params[:user])
  redirect "/users/#{user_id}"
end

get '/users/:id' do
  @user = User.find_user_by_id(params[:id])
  erb :"/users/show"
end
