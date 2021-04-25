class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :post, presence: true, length: { minimum: 50, maximum: 1000 }
  # validates :display_name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30, case_sensitive: false }

end
