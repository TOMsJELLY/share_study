class Problem < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :grade

  validates :statement,     presence: true
  validates :answer,        presence: true
  validates :grade_id,      presence: true, numericality: { other_than: 1 } 

  belongs_to :favorite
  has_many :comments
end
