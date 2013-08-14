require 'bcrypt'

class User < ActiveRecord::Base
  # include 'bcrypt'
  # Remember to create a migration!
  has_many :posts
  has_many :comments
  has_secure_password
  

  validates :user_name, presence: true
  validates :email, presence: true

end
