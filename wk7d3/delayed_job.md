#Delayed Jobs

In gemfile:  

		gem 'delayed_job_active_record'

In terminal:  

		rails generate delayed_job:active_record

Now we need to create a Profile:  
	
		touch Procfile

In our procfile we will put:  

		web: bundle exec rails server -p $PORT
		worker: bundle exec rake jobs:work

This procfile is required in order to deploy to Heroku.  

Now lets start our server, we will do this using foreman.  

		foreman start

If you do not have foreman installed yet do...  

		gem install foreman 
		foreman start

In our controller where we send the email:  

		UserMailer.delay.forget_password_email(user)



