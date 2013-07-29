#Factory Girl

##Installation
Put this in your gemfile `gem 'factory_girl'`  
In terminal `bundle install`  
In spec_helper `require 'factory_girl_rails'`

##Creating Factories

First, in your spec folder create a sub-folder called *factories*  

Now we need to create a file to make our factories in, I like to call this folder *active_record.rb*  
At the top of this folder we will put `FactoryGirl.define do` and at the very end, `end` :)  

Now let's make some factories.  

Our first line of each factory will start off with `factory :name_of_model do`  

Then we define each attribute we need for our object. To do that we just write the name of an attribute followed by a fake value for that attribute `name "Name 1"`  

Sometimes we have objects that have dependent associations, example an `item` is required to belong to a `list`.  FactoryGirl makes it easy to create associations when we create a facotry object.  

		factory :item do
			name "Name 1"
			association :list
		end

However, we can only associate something that also has a factory.  

		factory :item do
			name "Name 1"
			association :list
		end

		factory :list do
			name "Name 2"
		end

##Using Factories

**So, this all seems great, but how do we use these factories?**  

Let's go to one of our spec folders. Now, instead of manually creating a new object everytime, we can just call on FactoryGirl to do this for us...  

Instead of...  

		before :each do
			@list = List.create(:name => 'Name')
			@item = Item.new(:name => 'Name')
			@item.list = @list
			@item.save
		end

We can do...  

		before :each do
			@ item = FactoryGirl.create(:item)
		end

Or...  

		let(:item) { FactoryGirl.create(:item) }





  	


