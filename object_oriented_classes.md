#Classes and Object Oriented Ruby

So today we are going to write a program to bake cookies  
*(sadly no, this program will not bake real cookies for us, it will bake virtual program cookies)*  

####Our first class

So first things first we need something to bake these cookies in. We will bake the cookies in an oven.  

```ruby
class Oven
	attr_accessible :color, :brand

	def initialize(color, brand)
		@color = color
		@brand = brand
	end

end
```

Now we have an oven but it doesn't do anything yet (there are no methods).  

So, what should we put inside our oven?  

*COOKIES!*  

Uhm... not quite, this is just an oven program, not an actual oven.  
Let's think about what an oven does, what are actions it can take?  

*Well it cooks things.*  

Things get cooked in an oven, but what does the oven do in order to make things get cooked?  

*Well it heats up.*  

```ruby
class Oven
	attr_accessible :color, :brand

	def initialize(color, brand, temp)
		@color = color
		@brand = brand
		@temp = temp  # I've added an attribute temp so that we can keep track of the over heating up.
	end

	def heat_up
		@temp = @temp + 10
	end

end
```

Sweet. Now we have a working oven. We can worry about adding more functions as we need them later.  
Now what were we making again?  

*COOKIES!*

####Our Second Class

```ruby
class Cookie

	def initialize(sugar, flour)
		@sugar = sugar
		@flour = flour
	end

end
```

