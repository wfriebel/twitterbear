class User < ActiveRecord::Base
  # Remember to create a migration!


  has_many :friends_as_followers, foreign_key: :followee_id, class_name: Friend
  has_many :followers, through: :friends_as_followers, source: :follower

  has_many :friends_as_followee, foreign_key: :followee_id, class_name: Friend
  has_many :followees, through: :friends_as_followee, source: :followee

  has_many :tweets
end
