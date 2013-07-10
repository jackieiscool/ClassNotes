##View Helpers

**Resources:**  
- http://guides.rubyonrails.org/form_helpers.html
- http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-search_field
- http://guides.rubyonrails.org/action_view_overview.html

####Form Helpers  
- form_for
	- f.label
	- f.text_field
	- f.text_box
	- f.check_box
	- f.select
	- f.submit

- form_tag
	- label_tag
	- text_field_tag
	- submit_tag

- link_to
- button_to
- fields_for

- select_tag
	- time_zone_select
	- date_select
	- country_select

####Number Helpers
- number_to_currency

		number_to_currency(1234567890.506)                 # => $1,234,567,890.51
		number_to_currency(1234567890.506, precision: 3)   # => $1,234,567,890.506

- number_to_human

		number_to_human(123)        # => "123"
		number_to_human(1234)       # => "1.23 Thousand"

- number_to_human_size
- number_to_percentage

		number_to_percentage(100)                     # => 100.000%
		number_to_percentage("98")                    # => 98.000%
		number_to_percentage(100, precision: 0)       # => 100%

- number_to_phone
- number_with_delimiter
- number_with_precision

####Word Helpers

**pluralize**  

		pluralize(1, "cat") #=> "cat"
		pluralize(2, "cat") #=> "cats"

**turncate**  

		truncate("Once upon a time in a world far far away")
		# => "Once upon a time in a world..."

		truncate("Once upon a time in a world far far away", length: 17)
		# => "Once upon a ti..."

####Other Helpers

image_tag  

		image_tag("icon")  # erb tag
  		<img src="/images/icon" alt="Icon" /> #The html it translates to

###Gemfile

A gemfile is where we store all of the gems we want to use in our app.  
We install these gems by typing `bundle` or `bundle install` in our terminal.  
Even if a gem is installed on our computer, we need to put it in our Gemfile in order to access it in our rails app (it must be installed locally).  







