class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :problem

  validates :comment,     presence: true
end
