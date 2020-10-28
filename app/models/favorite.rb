class Favorite < ApplicationRecord
  belongs_to :user
  has_one :problem
end
