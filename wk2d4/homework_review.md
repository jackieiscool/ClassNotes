#Homework Review

###Git

**What is good about version control**  
- You can reference older versions of your project.
- You can retrieve deleted files.
- You can store code that you might want later.

###Rotten Tomatoes

OMDB stores rotten tomato information. You can access this by sending an extra parameter.  

**debugging**

Make sure you read the error message and understand what it says before you look at your code.  

###Rspec

- Write two types of tests, the normal case and the edge case.
	- Ordinal numbers that end in 'th' are normal cases.
	- '3rd' is an edge case.

**subject**

```ruby
	subject do
		# thigns go here
	end
```

Subject is a funky piece of rspec magic.  
	(magic just means there is a method somewhere in rspec that we can't see)  
Whatever the return value of a subject block is gets assigned to a varaible called 'subject'.  

Examples:

```ruby
	subject do
		name = 'Sally'
		a = Array.new
		"Hi"
	end
```
Because "Hi" is the last line subject will just be a string that equals "Hi".  

```ruby
	subject do
		name = 'Sally'
		a = Array.new
		return "Hi" #putting in a return temporarily can help you think about what is happening.
	end
```
In this case...

```ruby
	subject do
		a = Array.new
		a << "Sally"
		return a
	end
```
subject will be an array with "Sally" inside `["Sally"]`  





