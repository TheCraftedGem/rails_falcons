class User < ApplicationRecord
  has_secure_password
  has_many :user_favorites
  has_many :favorites, through: :user_favorites

  validates :email, uniqueness: true, presence: true

  validates_presence_of :email, :password
end
