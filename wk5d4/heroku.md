#Deploying to Heroku

		brew install heroku-toolbelt

Make sure you have a git repository for your app.  

		$ git init
		$ git add .
		$ git commit -m "my first commit"

Now create a new heroku remote (we have already created remotes on github, now we are creating a new one on heroku)  

		$ heroku create

Heroku may ask you to enter your email and password associated with your heroku account.  

Now check to make sure your heroku remote was created.  

		$ git remote -v

You should see something like:  

		heroku     git@heroku.com:falling-wind-1624.git (fetch)
		heroku     git@heroku.com:falling-wind-1624.git (push)

Heroku uses Postgres as it's database system, so lets make sure we have that in our gemfile:  

		group :production do
 		  gem 'pg'
		end

We put `gem 'pg'` in a production group so that we can still use `sqlite3` locally, but `pg` on production.  

Also make sure your `gem 'sqlite3'` is in a separate development and test group.  

		group :development, :test do
		  gem 'pry'
		end

**Now let's deploy some code:**  

		$ git push heroku master



