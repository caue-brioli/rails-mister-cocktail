class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  validates :name, uniqueness: true, presence: true

  accepts_nested_attributes_for :doses

end
