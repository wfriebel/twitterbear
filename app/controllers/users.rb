post '/login' do
  user_id = User.authenticate(params[:user])
  redirect "/users/#{user_id}"
end

get '/users/:id' do
	@all_users = User.all
  @user = User.find_user_by_id(params[:id])
  # @tweets = @user.tweets.sort{}
  @followees = @user.followees
  p @followees
  @tweets = @user.tweets.order(created_at: :desc) 
  erb :"/users/show"
end

post '/users/:id/tweet' do
	p "before save"
  @tweet = Tweet.create(tweet: params[:tweet], user_id: params[:id])
  p @tweet.user_id
  redirect "/users/#{@tweet.user_id}"
  p "after redirect"
end