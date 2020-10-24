class Instrument < ApplicationRecord
  has_many :instrument_posts
  has_many :posts, through: :instrument_posts
end
