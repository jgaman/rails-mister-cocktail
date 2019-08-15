class Cocktail < ApplicationRecord
  # validates :category, inclusion: { in: CATEGORIES }
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true
  validates :name, uniqueness: true
end
