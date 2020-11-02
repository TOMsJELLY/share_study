class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :grade

  validates :nickname,      presence: true
  validates :email,         presence: true,     uniqueness: { case_sensitive: :false }
  validates :password,      presence: true,     format: {with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,}\z/}
  validates :grade_id,      numericality: { other_than: 1 } 

  has_many :favorites
  has_many :comments
end
