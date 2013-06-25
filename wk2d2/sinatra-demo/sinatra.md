http://www.google.com/search/?q=WDI

- http: = protocal
- www.google.com = domain
- serch/ = path
- ?q=WDI = parameters (parameters are used to pass info back and forth)

		gem install sinatra sinatra-contrib


Sinatra has certain naming conventions. These are files/folders we are going to want to have...

		.
		./main.rb
		./public
		./public.css
		./views
		./views/layout.erb
		./views/result.erb

	main is our main page, our controller

		./main.rb

	public is a folder

		./public

	public.css is where we keep the bulk of our css, the css that applies to every page

		.public.css

	the views folder is where we will keep our view pages

		./views

	layout.erb will be the html that applies to every page

		./views/layout.erb

**Note: erb stands for embedded ruby; it is html that allows you to insert ruby code

##MVC

**Model**

- models are the classes we create

**View**

- views are our views
- things in our view folder that end with .erb

**Controller**

- In Sinatra main.rb is our controller
- In Sinatra all of our routes (our paths) go inside of our controller


##Views/Templates

In order to use a template(view) we must specify where things will render(in which view).
We do that with <erb: < filename >

i.e.

```ruby
get '/' do
	@name = "Anil Bridgpal"
	erb: home
end
```

**layout.erb**
- layout is a reserved name in Sinatra
- Sinatra knows that it should always render layout.erb first
- when it hits 'yield' it looks for the file we specified

```ruby
erb: home
```
**erb**
- in the above context, erb is a method
- This method makes the sinatra app look the erb file we passed in 
- home is the argument we are passing into the erb method

**yield**
- yield is a reserved word
- Sinatra knows when it sees home to look for something to yield
- Sinatra Magic!!! (a.k.a - a method that exists because of the sinatra gem)
- we pass the home folder (a block of code) into the yield method, and things happen


**forms**

```erb
<form_action="/search" method="get">
<input type="search" name='q' placeholder='put in a movie'>
<button value='serach'>Search</button>
</form>
```
- form_action: goes to our route '/search'
- method: is the type of route/request
- input type: gives us a type of field
- button: give us a way to submit info

