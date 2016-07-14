class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :followers, foreign_key: "followee_id", class_name: "Follower"
  has_many :followees, through: :followers
  has_many :tweets
end
