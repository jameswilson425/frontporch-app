class Post < ApplicationRecord
  belongs_to :user
  has_many :replies
  has_many :instrument_posts, dependent: :destroy
  has_many :instruments, through: :instrument_posts, dependent: :destroy
end
