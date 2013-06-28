#API's

**How do we get info from an api?**

```ruby

require('open-uri') #A gem that allows us to make requests to APIs
require('json') #A gem that allows us to work with json

file = open(www.example.com) # This gets info from the url
str = file.read # This reads the info that we've requested from the url
obj = JSON.parse(str) # This turns the json into a hash/array format that we can work with.

```

**How does this look in Sinatra?**

```ruby
require('sinatra')
require('sinatra/reload')

# http://boss.local:4567/movies/17?tomato=true&poster=true#review

get("/movies/:id") do
	id = params[:id]
	tomato  = params[:tomato]
	poster = params[:poster]
end

# http://boss.local.com/movies/17
#
# <input type="search" name="search">

post("/search") do
	s = params[:search]
end

```

#Module

```ruby

module Flickr # Starts like a class, but with the word module
	
	def load_stuff
		JSON.parse(open(http://example.com))
	end

	class Picture # Classes can be inside modules, or in herit from modules
								# To inherit it would look like this... class Picture < Flickr

		def convert_to_bw
			#...
		end

	end
end

obj = Flickr.load_stuff
obj = Flickr::Picture.new

```