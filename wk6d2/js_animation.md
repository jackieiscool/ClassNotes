#JS Animation

First let's start with out basic html page:  

		<!doctype html>

		<html>
			<head>
				<title>demo</title>
			</head>

			<body>
				<img src="http://www.memphisflyer.com/binary/6ed7/1312215844-matt-damon2.jpg">
			</body>

		</html>

Now we need to add our script tag, and point the `src` to our javascript file so we have access to this code.  

		<!doctype html>

		<html>
			<head>
				<title>demo</title>
			</head>

			<body>
				<img src="http://www.memphisflyer.com/binary/6ed7/1312215844-matt-damon2.jpg">

				<script src='script.js'></script> <-- our script tag
			</body>

		</html>

Open up this file in your browser, and open up the javascript console.  

**Now let's play with some javascript!**  

		document.getElementsByTagName('img')

This is a jquery function that will collect all the image tags, and return an array of what is inside these tags.  
Because there is only one image right now it will only return one element in our array.  

Other cool jquery things:  

Execute a function multiple times between a delay  

		window.setInterval(function_name, delaymilliseconds);
		window.clearInterval(SETINTERVALOBJECT);

Execute a function after a certain period  

		window.setTimeout
		window.clearTimeout

Chage an elements attributes.  

		element.setAttritute('width', element.width + 10);


By changing an elements attributes, and setting this to an interval, we cna make the page move.  

		function makeImageBigger() {
			var mattDamon = document.getElementsByTagName('img')[0];
			mattDamon.setAttribute('width', mattDamon.width + 1);
		}

		window.setInterval(makeImageBigger, 10);

This will make the picture get bigger, and look like it's moving toward us without the user doing anything on the broswer besides visiting the page.  


