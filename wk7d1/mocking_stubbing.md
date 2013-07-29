#Mocking and Stubbing

In rspec mocks and stubs let us replace pieces of code, with data of our choosing, to help make the testing process easier.  

In the example below we create a 'mock', or fake person object to test with.  
We use a 'stub' to stub out the new method on Person, and instead return our mock person.  

		describe PersonController do
		  
		  before :each do
		    @person = mock("person")
		    Person.stub!(:new).and_return(@person)
		  end
		  
		  it "should create a new person on GET to create" do
		    Person.should_receive(:new).and_return(@person)
		    get 'create'
		  end
		 end

##Stubbing API's

One common use of stubs in rails is when we make API calls. We don't want to call an external API (or many external API calls) everytime we run our testing suite.  
Instead we stub out the information we would normally receive from the API.  

Example:  

First we will create a `helpers` folder in our `spec` folder. In this folder we will create an `api_helper.rb`  

In our `api_helper.rb` we will create a constant and assign it the value of an API return.  

		OMDB_INFO = {
			Title: "True Grit",
			Year: "1969",
			Rated: "G",
			Released: "11 Jun 1969",
			Runtime: "2 h 8 min",
			Genre: "Adventure, Western, Drama",
			Director: "Henry Hathaway",
			Writer: "Charles Portis, Marguerite Roberts",
			Actors: "John Wayne, Kim Darby, Glen Campbell, Jeremy Slate",
			Plot: "A drunken, hard-nosed U.S. Marshal and a Texas Ranger help a stubborn young woman track down her father's murderer in Indian territory.",
			Poster: "http://ia.media-imdb.com/images/M/MV5BMTYwNTE3NDYzOV5BMl5BanBnXkFtZTcwNTU5MzY0MQ@@._V1_SX300.jpg",
			imdbRating: "7.3",
			imdbVotes: "23,868",
			imdbID: "tt0065126",
			Type: "movie",
			Response: "True"
			}

We must require our api_helper in our spec_helper to ensure that all our specs have access to it.  

		require 'api_helper'

Now we can stub out our api calls with our api_info.  

		before :each do
			OpenUri.any_instance.stub(:open).and_return(OMDB_INFO)
		end

