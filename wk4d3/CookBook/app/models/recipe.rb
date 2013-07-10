class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :servingsize, :instructions, :image, :book_id, :ingredient_ids

  belongs_to :book
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
