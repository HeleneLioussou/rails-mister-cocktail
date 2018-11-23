class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient_id, scope: :cocktail_id
  belongs_to :ingredient
  belongs_to :cocktail
end
