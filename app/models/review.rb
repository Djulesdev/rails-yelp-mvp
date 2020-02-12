class Review < ApplicationRecord
  RATES = (0..5).to_a.freeze
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true, inclusion: { in: RATES }
end
