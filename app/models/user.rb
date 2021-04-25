class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_writer :login

  # def login
  #   @login || display_name || email
  # end

  # def self.find_for_database_authentication(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if login = conditions.delete(:login)
  #     where(conditions.to_h).where(['lower(display_name) = :value OR lower(email) = :value',
  #                                   { value: login.downcase }]).first
  #   elsif conditions.key?(:display_name) || conditions.key?(:email)
  #     where(conditions.to_h).first
  #   end
  # end
  # validate :validate_username

  # def validate_username
  #   errors.add(:display_name, :invalid) if User.where(email: display_name).exists?
  # end
  has_many :posts
  validates :email, presence: true, uniqueness: true
  validates :display_name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30, case_sensitive: false }

end
