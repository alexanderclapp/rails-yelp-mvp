class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  validates :content, uniqueness: false, presence: true
  validates :restaurant, presence: true
end
