class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  # validates(:name, presence: true)
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: {maximum: 255}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
  uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true, length: {minimum: 6} 
end
