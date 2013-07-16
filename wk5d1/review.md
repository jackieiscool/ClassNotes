##Review

tables:  

		class Book
			has_many :recipes

		class Recipe 

			belongs_to :book 

			# If a model has a belongs to it must have a field in the database for the id of the model it belongs to.

databases:  

		Book
		Id

		Recipe
		Id 
		book_id


