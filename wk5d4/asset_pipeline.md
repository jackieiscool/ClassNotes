##Asset Pipeline

####SCSS

scss allows you to nest css attributes.  

		a {
			color: blue;
			a .visited {
				color: red;
			}
		}

####Bootstrap

You can install twitter-bootstrap as a gem, or download it to your computer and pull out the parts you want.  

If you install as a gem you may get more then you need, and you don't have access to the css files.  

If you download you can pull out just the files you want.  

**application.css**  

This is a manifest. Most of it is jsut comments.  

This part compiles the rest of the css  

		*= require_self
 		*= require_tree .

Because this file requires itself, along with the other css files, it can also be used as a stylesheet.  

If we would like to require bootstrap in our application.css file we should de this before our other files.  

		*= require bootstrap
		*= require_self
 		*= require_tree .




