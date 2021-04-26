class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :post, presence: true, length: { minimum: 50, maximum: 1000 }
end
