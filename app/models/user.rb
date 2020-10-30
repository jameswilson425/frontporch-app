class User < ApplicationRecord
  has_secure_password
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :bio, length: { maximum: 900 }

  has_many :posts
  has_many :replies
end
