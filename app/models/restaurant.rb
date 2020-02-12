class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian'].freeze
  validates :name, presence: true
  validates :category, inclusion: { in: SPECIES }
  validates :address, presence: true
  validates :category, presence: true
end
