##Authentication for Users

First we need to add a User model  

		rails g model user

Add fields in your migration file  

		t.string :name
		t.string :email
		
Run your new migration  

		rake db:migrate

Add some validations to user  

		validates_presence_of :name, :email
  	validates :name, length:{maximum:50}

  	validates :email, uniqueness: {case_sensitive: false}

Because emails are not casesensitive on most platforms let's makesure our emails are all the same case.  

		before_save { |user| user.email = email.downcase }

In this piece of code we tell rails that we want to do something before we save a user object (before_save is built in rails "magic")  
Then we take a user object, find it's email, and call downcase on that email.  

Now we will use Regex to ensure that our email looks like an email.  

		VALID_EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

Regex is it's own language that allows us to check the format of strings.  
Now we can save "email@gmail.com" as a users email, but not "thisismyemail"  

*A good source for working with Regex... http://rubular.com*  

Our user now has a valid name and email, but in order to have a secure sight they also need password.  

We will add a password and password_confirmation as attributes on our model.  

		attr_accessible :name, :email, :password, :password_confirmation

		#and

		validates_presence_of :name, :email, :password, :password_confirmation

However, we don't want to store the passwords as passwords in our database, because this would not be secure.  

####Encryption

To do our encryption we will use the bcrypt gem. This will do the encryption for us (fancy math magic).  

Add this to your gemfile and then bundle:  

		gem 'bcrypt-ruby'

Now we will add a migration to add password digest to our user (this is the user's encrypted password)  

		rails g migration AddColumnPasswordDigestToUser

		add_column :users, :password_digest, :string

Now in our user model we need 

		has_secure_password

This is a method that comes with rails, but requires bcrypt in order to use.  

Now set-up your Users controller (this part is the same as other controllers we have created).  

####Sessions

Now that we have users, we need user sessions.  
Sessions are how we store when a user is logged in or out.  

First we will create a sessions controller  

		class SesssionsController < ApplicationController

			def new

			end

			def create

			end

			def destroy

			end

		end

And a view to login/create a new sessions:  

		<div class="row">
		  <div class="span6 offset3">
		    <%= form_for(:session, url:sessions_path) do |f| %>

		      <%= f.label:email %>
		      <%= f.text_field:email %>

		      <%= f.label:password %>
		      <%= f.password_field:password %>

		      <%= f.submit"Sign in", class:"btn btn-large btn-primary" %>
		    <%end%>

		    <p>New user? <%= link_to "Sign up now!", signup_path %></p>
		  </div>
		</div>

But, where are we going to store these sessions? We do not need to store them to the database, because we will just delete them everytime the user signs_out *(they do not need to be persistant)*. Instead we will store them in a cookie. Fortunately Rails has a cookies hash built in, however we need something to store there.  

We will have to add a `remember_token` field to our users table in our database.  

		rails generate migration add_remember_token_to_users

		# In migration file...

		def change
	  	add_column :users, :remember_token, :string

	  	add_index :users, :remember_token
	  end

Now let's write a method in our user model to create cookies which store user tokens:  

		private

	  def create_remember_token
	    self.remember_token = SecureRandom.urlsafe_base64
	  end

This will create a random string and attach it to a user while they are logged in.  

Now let's add some code to our controller:  

```ruby
def create
	# First we need to find the user by their email 
		# (we do not have their id from the sign in form)

	user = User.find_by_email(params[:session][:email].downcase)
  
  # Next we check to see if the user entered the correct email and password

  if user && user.authenticate(params[:session][:password])

    # Now sign the user in and redirect to the user's show page.

  else
    # or create an error message and re-render the signin form.
  end
end
```

But, how do we connect our controller to our `create_token` method?  
For this we are going to create a session_helper.rb (this goes in our helpers folder).  

```ruby
module SessionsHelper 

	# This method assigns a user's remember_token to the curernt cookie
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
	end

	# This methid allows us to check if a user is signed in or not
	def signed_in?
    !current_user.nil?
	end

	# This method deletes a cookie to end a user_session
	def sign_out
		self.current_user = nil
    cookies.delete(:remember_token)
	end

	# These methods are for setting and getting the current_user
	def current_user=(user)
		@current_user = user
	end

	def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	# This we will use later when we want to block certain routes from being accessed without signing in
	def signed_in_user
		redirect_to new_user_path unless signed_in?
	end
end
```

Now let's finish our controller:  

```ruby
class SessionsController < ApplicationController
include SessionsHelper #We must include our SessionsHelper class inorder to access it's methods
	def new
	end

	def create
	  # find that user
	  user = User.find_by_email(params[:session][:email].downcase)
	  # verify password match
	  if user && user.authenticate(params[:session][:password])
	    sign_in user
	    # go to user profile if sign in successful
	    redirect_to user
	  else
	    #-> flash error, render 'new'
	    flash.now[:error]='Invalid email/password combination'
	    render 'new'
	  end
	end

	def destroy
		sign_out # We call on our sign_out method which deletes our cookie
    redirect_to root_url
	end
end
```

Finally let's block users from creating new books without signing in.  







