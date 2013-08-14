class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :post_link, presence: true
  
end
