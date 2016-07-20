class Actor < ActiveRecord::Base
  has_many :posts
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: :follower_id
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: :followed_id
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower  #
end
