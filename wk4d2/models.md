#Week 4 - Day 2 
##Rails Models and Associations

###Create new app

```
rails new MomaApp
cd MomaApp

```

####Create models


```
rails generate model Artist

ActiveRecord is a gem that makes up rails. Does everything that makes up databases.



class CreateArtistsTable < ActiveRecord::Migration
	
	def change
		t.string :name
		t.string :nationality
		t.date :dob
		t.string :period
		t.text :image
		t.timestamps
	end
	
end


rake db:create
rake db:migrate

```
```
rails generate model Paintings

class CreatePaintings < ActiveRecord::Migration

	def change
		create_table :paintings do |t|
		t.string :title
		t.string :year
		t.string :medium
		t.string :style
		t.text :image
		t.integer :artist_id
		t.timestamps
	end
end


```
```
class Painting < ActiveRecord::Base

	attr_accessible :title, :year, :medium, :style, :image, :artist_id
	belongs_to :artist



Artist.all
Artist.first
Artist.last

Artists.where(:name => "Paublo Picasso").paintings



p.Painting.new
p.save


Artist.create(name: "Jackie", dob: ")


validates_presence_of :year, :artist

validates_uniqueness_of :title


```

###Validations
```
validate :ian

def ian
	
	if self.yeah.to_i < Time.now.year.to_i
	errors.add(:year, "Year is in the future")
	end
end
```
```
a = Artist.last
i = a.Paintings.new
i.save
i.errors
```

###CRUD/RESTFUL

create | new/create  
read - index/show  
update - edit/update  
destroy - destroy  



make new views
/paintings

**index.html**

```
<%= @paintings %>

```

**new.html**

```

<%= form_for @painting do |f| %>
  <%= f.label :artist_id %>
  <%= f.select :artist_id, Artist.all.map{|artist| [artist.name, artist.id]}, :include_blank => true, :prompt => "Pick Artist!" %>
  <br>
  <%= f.text_field :title %>
  <%= f.label :title %>
  <br>
  <%= f.text_field :year %>
  <%= f.label :year %>
  <br>
  <%= f.text_field :medium %>
  <%= f.label :medium %>
  <br>
  <%= f.text_field :style %>
  
 
  <%= f.label :style %>
  <br>
  <%= f.text_field :image %>
  <%= f.label :image %>
  <br>
  <%= f.submit %>
<% end %>


```