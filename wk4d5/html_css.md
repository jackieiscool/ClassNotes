#HTML/CSS

Instead of Re-writing all of our HTML on each page we can write one layout. This includes the stuff we want on every page. We then just replace the middle content with each new page.  

**Gemfile**  
We use a Gemfiles because they let others know what Gem's they need to install our project. It also allows us to mass install all of our gems.  

**Rack**  
*"Rack is a kind of middleware. It sits between your web application and the web server. It handles all of the server-specific API calls, passes on the HTTP request and all the environment parameters in a hash, and gives your application’s response back to the server. In other words, your application doesn’t need to know how to talk to an HTTP server, it needs to know how to talk to Rack."* - about.com  

Rack is required for Rails and Sinatra. (We call this a dependency)  

Gemfile:  

		source :rubygems

		gem 'sinatra'

server.rb:  

		require 'sinatra'

		get '/' do
			erb :index
		end

		# or

		get("/") { erb :index }  

		#This does the same thing, but is shorter and is a good syntax if we don't need a lot of logic for this piece of the controller

		get("/about") { erb :about }
		get("/contact") { erb :contact }
		get("/signup") { erb :signup }
		get("something") do
			erb :something 
		end

**yield**  

Yeild tells ruby(erb) to yield(output) code in a specific place.  
Yeild can be passed arguments. This means you can use multiple yeilds, each with different arguments. This allows you to pass pieces of code within the layout, but only on specific pages.  

		<%= yield %>

		# or

		<%= yield %>

		<%= yield :main_content %>

**Padding**  

		<div id="square">
			Square
		</div>

		<div id="not-a-square">
			Not a square!
		</div>

		<style>
			body { 
				magin: 0;
			}

			#square {
				height: 100px;
				width: 100px;
				border: 1px solid black;
				margin: 10px;
				background: red;
				color: white;
				padding: 10px;
			}

The square will be 100px wide and tall.  
The square will be 112px from the right side of the page.  
The square will be 10px from the left side fo the screen.  
The square will be 10 px from the top of the screen.  

**float**  

		#square {
				height: 100px;
				width: 100px;
				border: 1px solid black;
				margin: 10px;
				background: red;
				color: white;
				padding: 10px;
				float: right;
			}

When we add `float: right;` it makes our square move to the right of the page. It still keeps it's border and margin.  

Float is not the best way to position things.  

**position**  

`postion` can be passed one of two attributes, `fixed` and `absolute`  

		#square {
				height: 100px;
				width: 100px;
				border: 1px solid black;
				margin: 10px;
				background: red;
				color: white;
				padding: 10px;
				position: fixed;
			}

The square will not move with fixed, but everything else will move around and under it.  

Absolute means things are absolute in reference to other things. Requires some sort of container that is relative.  

				

**Sublime Cheatsheet** https://github.com/tower/tower/wiki/Sublime-Text-2-Cheat-Sheet  


		

