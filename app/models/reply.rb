class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, length: { maximum: 300 }
end
