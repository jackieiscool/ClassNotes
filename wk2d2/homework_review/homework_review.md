## Homework Review

**Tenant**
- @name
- @phone
- @unit

Tenant is like a hash, but more tangible and reuseable.
Each of its attributes is like a key, and we can assign values.
**However** we cannot call on these same key - value pairs in the same way that we call on them from hashes.

**Unit**
- @building
- @number
- @sqft
- @rent
- @tenant

We can default tenant as nil in the params

```ruby
def initialize(building, number, sqft, rent, tenant = nil)
```	

We can then reassign the @teneant variable later

```ruby
unit.tenant = #insert tenant object here

# i.e.

tenant1 = Tenant.new
unit.tenant =  tenant1
```	

**Building**
- @name
- @address
- @units

	We add units to the building by shoveling them into @units
	We can do this because we made @units an array

```ruby	
building.units
# This just calls on our @units variable, which is an array

building.units << Unit.new
# This adds unit objects into the @units array
```	

###What is a controller?
**main.rb = Controller**
- a controller calls the shots
- it brings different pieces of the program together
- this is where the program runs

###Scope

```ruby
building = Building.new("Waterfront Tower", "123 Main St")
```	

**What is buildings scope?**
- why can we access is at the bottom of the file?
- why can't we access it inside methods in that file?
- the building's scope is the file main.rb and can be accessed by anything that is encapsulated in that scope
- creating a method creates a new scope
- things inside that method can only access things within the same scope

```ruby
$message = ''
```	

**Why can we access message from inside a method?**
- the '$' makes message a global method
- it can be accessed in it's scope, and any scopes it's scope contains
- $messages scope is main.rb, so scopes (i.e. methods) inside main.rb have access to message

**Global Variables**
Why do we hate global variables?
- because they are evil
- they cause errors and make things BAD
- there is no way to test global variables
- when you pass things as parameters you can test they are right
Now that you know what global variables are... DON'T USE THEM!

