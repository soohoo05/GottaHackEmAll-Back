class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
  has_many :hackathonlists
  has_many :hackathons, through: :hackathonlists
end
