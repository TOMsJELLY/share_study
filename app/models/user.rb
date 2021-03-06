class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,      presence: true
  validates :email,         presence: true,     uniqueness: { case_sensitive: :false }
  validates :password,      presence: true,     format: {with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,}\z/}

  has_many :favorites
  has_many :comments
  has_many :problems
end
