class User < ActiveRecord::Base
  include BCrypt

  has_many :friends_as_followers, foreign_key: :followee_id, class_name: Friend
  has_many :followers, through: :friends_as_followers, source: :follower

  has_many :friends_as_followee, foreign_key: :followee_id, class_name: Friend
  has_many :followees, through: :friends_as_followee, source: :followee

  has_many :tweets

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(user_info)
    user = User.find_by(user_name: user_info[:user_name])
    if user.password == user_info[:password]
      return user.id
    else
      return nil
    end
  end

  def self.find_user_by_id(user_id)
    User.find(user_id)
  end

end
