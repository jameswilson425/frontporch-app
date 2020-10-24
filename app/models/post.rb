class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  has_many :instrument_posts
  has_many :instruments, through: :instrument_posts
end
