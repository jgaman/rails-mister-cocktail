class Cocktail < ApplicationRecord
  # validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
