#CSS

*resources:*  
codepen.io  
scratchpad.io  

```html
	<style>
		p, h1 {
			font-size: 120px;
		}
	</style>
	<h1>Hi there</h1>
	<p>hey</p>
```
style is a tag that let's us put css directly into our html file.  
Only put css in your html file for testing. Eventually it should go in it's own file.  

p and h1 are the elements we are selecting  
we then write the styles we want to apply to there elements  

```html
<style>
		div {
			font-size: 120px;
		}
	</style>
	<div>
		<h1>Hi there</h1>
		<p>hey</p>
	</div>
```
A div can be used to separate lots of elements into a group.  
We can then apply a style to all the elements in that group.  

```html
<style>
		 .posts {
			font-size: 120px;
		}
		.things {
			font-size: 30px;
		}
	</style>
	<div class ='posts'>
		<h1>Hi there</h1>
		<p>hey</p>
	</div>
	<div class ='things'>
		<h1>Hi there</h1>
		<p>hey</p>
	</div>
```

We can assign classes to our divs. Then we can have multiple divs with different styles.  

<style>
		#homepage .header {
			color: #f0f;
		}
	</style>
	<div id='homepage'>
		<h1>Hi there</h1>
		<p>hey</p>
	</div>

We use #homepage with a '#' because it is an id.  
We use '.' like .posts when we are refering to a class.  

```html
	<style>
	* {
		background-color: rgba(255, 0, 0, 1);
	}
	</style>
```

This symbol '*' makes the style apply to all elements.  

*rgba* stands for red green blue alpha.  
We use this to specify the amount of red, green, blue we want, and it's opaqueness.  

**background** can be used by iteself to specify lots of properties for your background.  
Or you can specify specific elements of your background.  
- background-color
- background-image
- background-repeat
- background-attachment
- background-position

###Box Model

Everything in css is laid out in boxes, we just can't always see them.  

```html
<style>
	h1 {
	padding: 40px;
	margin: 40px;
	border: 2px dashed red;
}
</style>
```

**padding** adds extra space in each box, so it moves things like text farther apart.  

**border** puts a border around the box.  

###Positioning

```html
<style>
	.box {
		display: inline;
	}

	.box2 {
		display: block;
	}

	.box3 {
		float: right;
	}
</style>
```
**display: inline;** Block will be displayed vertically, next to other block.  

**display: block;** Block will be displayed horizontally, after another block.  

**float: right;** Element's position is dependent on other elements.  
It will always "float" to the right side.  

```html
<style >
	.container {
		margin: 30px auto;
	}
</style>
```

**auto**  
Tells the program to put 30px in, or whatever it needs to get to the border.  
This makes the css more dynamic.  




