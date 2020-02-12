class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian'].freeze
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :address, presence: true
  validates :category, presence: true
  has_many :reviews, dependent: :destroy
end
