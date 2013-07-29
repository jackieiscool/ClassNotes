#CSS Animation

There are two way to setup a CSS animation.  

You can describe the animation using a tag called key frames.  
- These are like check points.  
- There are lots of properties you can use, like direction, and how long do we want it to take.  

Examples: 

		#ga-css {
			-webkit-animation-direct;
			-webkit-animation-duration;
			-webkit-animation-name;
			-webkit-animation-timing-function;
		}

Webkit is a browser rendering engine. We must specify this when we use properties that are only a part of CSS3.  

Now let's set our properties:  

		#ga-css {
			-webkit-animation-direct: alternate;
			-webkit-animation-duration: 3s;
			-webkit-animation-name: infinite;
			-webkit-animation-timing-function: linear;
			-webkit-animation-name: hamertime;
		}

		@-webkit-keyframes hammertime {
			left: 0;
		}
		{
			left: 500px;
		}

