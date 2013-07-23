#Rspec

Make sure you have `rspec-rails` in your Gemfile. This should go in the test/development group.  

		group :development, :test do
		  gem 'rspec-rails'
		end

Now run:  

	rails generate rspec:install

Make sure you have a spec folder. In this folder you should also have a spec_helper.rb  

Put these things in your spec_helper (you can remove all the comments if you'd like)

In your spec folder you will have sub-folders for different groups of tests.  
ex.  
- models
- controllers
- helpers

You will then have a spec file for each of your regular ruby files.  
ex.  
- if you have `user.rb` you will have `user_spec.rb`  
- in you have `user_controller.rb` you will have `user_controller_spec.rb`  

In each spec file make sure you require your spec_helper.  

		require 'spec_helper'




