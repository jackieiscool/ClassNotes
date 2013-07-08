class MoviesController < ApplicationController

	def index
		@message = "Hello World"
		@movie_title = params[:s]
	end

end

#localhost:3000/movies/index