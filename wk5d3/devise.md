##Devise

**Step 1:** Install devise  
	- put this in your gemfile `gem 'devise'`  
	- run `bundle`  
	- now run `rails generate devise:install`  

**Step 2:** Create your user model  
	run `rails generate devise MODEL` where MODEL is the name of the model you want (i.e. User)  

**Step 3:** Migrate your database  
	`rake db:migrate`  

**Step 4:** Restart your rails server (if it is started)  
	Devise will add routes to your routes file for your new user model.  

**Step 5:** Block users from using site without loggin in.  
	Add `before_filter :authenticate_user!` to your application controller.  
	If you only want to block certain parts of the site you can add this to individual controllers.  

**Step 6:** Create views  
	You can manually create these, or generate them from devise  
	`rails generate devise:views` will generate views for you  

**Step 7:**  Add Login and Logout links  
Add this to you application.html.erb under /layouts
		
		<% if user_signed_in? %>
		  <li>
		  <%= link_to('Logout', destroy_user_session_path, :method => :delete) %>        
		  </li>
		<% else %>
		  <li>
		  <%= link_to('Login', new_user_session_path)  %>  
		  </li>
		<% end %>

Vist your site and sign_up/login!  

**Some awesome methods you now can use:**  
- `user_signed_in?` this checks to see if a user is signed_in
- `current_user` this returns the user object for the user that is logged in.
- `user_session` this returns a session object

####Adding an Admin model

Now, what if we want to add another model for Admins on top of our User model?  

**Step 1:** Create your admin model  
	`rails generate devise Admin`  

**Step 2:** Migrate your database (again) and restart your server (again)  
	`rake db:migrate`  

**Step 3:** Create more views  
	run `rails generate devise:views` one more time, and this will create your admin views

**Step 4:** Block regular users from seeing admin pages  
	put `before_filter :authenticate_admin!` in any controllers you wish to be admin only.  
