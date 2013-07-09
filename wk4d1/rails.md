#Rails

**Why is rails important to you?**  

- It is a popular framework.
- It will get me a job?
- It makes it easy to make web apps

**Why is open source important to people?**  

- It allows people to give back.
- Anyone can use it.

###History of Rails

Created by DHH a programmer at 37 Signals. He created Rails while creating a project management app called Basecamp. He extracted code from basecamp and created a modular package called rails. DHH is now the head of the rails core team, a group of programmers that oversee the maintenance, and continued building of rails. Anyone can contribute to rails, but you have to get your pull request past the rails core guys :)  

##MVC

**Model View Controller**  

Data Storage ---> Model ---> Controller <--- View  

**Model:**  
- is responsible for fetching data from the database (SQL magic)
- is responsible for any manipulation of data
- is responsible for giving data to the controller in an easy format

**Controller:**  
- is a mediary between all the other working parts
- is responsible for fetching what it needs from the model
- is responsible for passing needed data to the view

**View**  
- is where your HTML goes
- is the formatted data for the user to see
- interacts with the controller, and your asset files (javascript and css files)

##Let's Start a Rails App!

In terminal type:  

		rails new monday_app

Now CD into your new app.  


####Gemfile

**What is a gem?**  

Gems are pre-made snippets/packages of code we can install and use. This allows us to do less work, and programmers don't need to rewrite the same code others have already written.  

*There will be a gem for almost anything you want to do*  

**Resources:**  
- https://www.ruby-toolbox.com/
- http://rubygems.org/

####Config Folder

**application.rb**  


###Formatting Conventions

Models == singular  

Controllers == plural  

Variables == lowercase with underscores  

class Names == Camel Case (uppercase, with uppercase letters to distinguish new words)  
- example: class MoviesController

##Render and Redirect



