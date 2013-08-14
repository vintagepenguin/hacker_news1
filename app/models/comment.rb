class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :post

  has_many :replies, class_name: "Comment", 
                     foreign_key: "parent_id"

  belongs_to :parent, class_name: "Comment"

  validates :reply, presence: true
end
