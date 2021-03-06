class User < ApplicationRecord
  has_one :profile

  has_secure_password

  validates :email, :password, presence: true

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
