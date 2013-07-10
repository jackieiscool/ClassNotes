class Ingredient < ActiveRecord::Base
  attr_accessible :name, :measurement, :cost, :image

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
