class Book < ActiveRecord::Base
  attr_accessible :title, :cuisine, :chef, :image
  
  has_many :recipes
end
