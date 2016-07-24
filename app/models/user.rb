class User < ActiveRecord::Base
  include BCrypt

  has_many :posts
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: :follower_id
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: :followed_id
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower  #

  # has_secure_password

  validates :email, :password, presence: true
  validates :email, uniqueness: true

  def password
    @password ||=Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end
end
