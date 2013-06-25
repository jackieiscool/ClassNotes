##Movie Lab
**3 pages**
- '/' = our homepage
- '/search' = makes a call to oMDB API and gets back json
- '/movie' = displays information on the movie

**Use oMDB API**
- returns a json object
- one movie is one hash: hash keys like title, and year

```ruby
get '/search' do
	@query = params[:q]
	url = ''
	@results = JSON.load(open(url).read)
	@movies = @results['Search']
	erb :result
end
```