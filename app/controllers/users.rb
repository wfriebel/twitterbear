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

# created by Will Kat
post '/users' do
  user = User.create(params[:user])

  redirect "/users/#{user.id}"
end
