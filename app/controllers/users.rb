get '/users/new' do

  erb :"/users/new"
end

post '/login' do
  user_id = User.authenticate(params[:user])
  if user_id
    redirect "/users/#{user_id}"
  else
    redirect '/'
  end
end

get '/users/:id' do
  @user = User.find_user_by_id(params[:id])
  erb :"/users/show"
end

post '/users' do
  user = User.create(params[:user])

  redirect "/users/#{user.id}"
end
