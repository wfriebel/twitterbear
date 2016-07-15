require 'faker'

#Destroy all existing users and tweets
users = User.all
users.each {|user| user.destroy}

tweets = Tweet.all
tweets.each {|tweet| tweet.destroy}
<<<<<<< HEAD

friends = Friend.all
friends.each {|friend| friend.destroy}
#Create 100 users
100.times do
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		user_name: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password_hash: Faker::Internet.password,
		image_url: Faker::Company.logo
	)

#Create 100 tweets
	Tweet.create(
		tweet: Faker::Lorem.characters(120)
	)
end

User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		user_name: "bear",
		email: Faker::Internet.email,
		password_hash: "123",
		image_url: Faker::Company.logo
		)
=======

friends = Friend.all
friends.each {|friend| friend.destroy}
#Create 100 users
100.times do
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		user_name: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password_hash: Faker::Internet.password,
		image_url: Faker::Company.logo
	)

#Create 100 tweets
	Tweet.create(
		tweet: Faker::Lorem.characters(120)
	)
end
>>>>>>> development
