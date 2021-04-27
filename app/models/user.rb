class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_writer :login

  has_many :posts
  validates :email, presence: true, uniqueness: true
  validates :display_name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30, case_sensitive: false }
end
