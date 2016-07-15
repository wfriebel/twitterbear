
require 'faker'

User.delete_all
Tweet.delete_all

500.times do
  User.create(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :user_name => Faker::Internet.user_name, :email => Faker::Internet.email, :password_hash => Faker::Internet.password, :image_url => Faker::Internet.url)
end

2000.times do
  Tweet.create(:tweet => Faker::Lorem.characters(10..140), :user_id => rand(1..500))
end
