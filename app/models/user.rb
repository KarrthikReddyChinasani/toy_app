class User < ApplicationRecord
  has_many :microposts
  validates :name, length: {minimum: 6, maximum:20}, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },  presence: true
end
