post '/login' do
  user_id = User.authenticate(params[:user])
  redirect "/users/#{user_id}"
end

get '/users/:id' do
  @user = User.find_user_by_id(params[:id])
  erb :"/users/show"
end

post '/users/:id/tweet' do
	p "before save"
  @tweet = Tweet.create(tweet: params[:tweet], user_id: params[:id])
  p @tweet.user_id
  redirect "/users/#{@tweet.user_id}"
  p "after redirect"
end