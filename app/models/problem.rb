class Problem < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :grade

  validates :title,         presence: true
  validates :statement,     presence: true
  validates :answer,        presence: true
  validates :grade_id,      presence: true, numericality: { other_than: 1 } 

  has_one :favorite
  has_many :comments
end
