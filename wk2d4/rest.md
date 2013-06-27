##CRUD

**C**reate  
**R**ead  
**U**pdate  
**D**estroy  

What does this do?

```ruby

[2, 11, 37, 42].map! { |number| number + 5 }

```

First we **create** an array `[2, 11, 37, 42]`  
Then we **read** the arary `.map!`  
Then we **update** the array `number + 5`  
Then we **destroyed** the array, because we did not save it to a variable.  

##RESTful

**RE**presentational  
**S**tate  
**T**ransfer  

**GET** == Read  
**POST** == Create  
**PUT** == Replace Update  
**PATCH** == Merge Update  
**DELETE** = Destroy  

`get "/movies"` Gets a list of movies.  
`get "/movies/:id"` Gets one movie.  
`post "/movies"` Posts a hash with info for one movie.  
(We would want to get back an id)  
`patch "/movie/:id"` Updates a specific attribute of one movie.  
(We pass in any params that we want to change i.e. {authors: "new authors"})  
`put "/movie/:id` Removes the current movie hash, and replaces it with a new hash.  
`delete "movie/:id` Deletes one movie.  
`delete "movies"` Deletes all movies.  



