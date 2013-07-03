##Homework Review		

**Starting Function**  
This is the function that gets executed on page load. It is only executed **ONCE**.  
This means that any variables created inside this function will only be created once.  
```javascript
$(document).ready(function() {
	// Code goes here.		
}
```

**Button click function**  
This function is called when the button is clicked. This means that all the code inside the function will be called once, each time the button is clicked.  

```javascript
$('button').on('click', function() {
	// Code goes here
}
```

**itemValue**  
This sets the variable itemValue to any inputs (things in text boxes) on the page.  

```javascript
var itemValue = $('.inputValue').val();
```

**listItem**  
This sets the variable listItem to the previous variable itemValue but also adds html so that it can be sent back to the view page in a fomatable way.  

```javascript
var listItem = $('<li>' + itemValue + '<input type="checkbox"><button class="remove">Remove</button></li>);
```

We wrap the above code in a jQuery object `$(code);` because this allows us more flexibility in working with it in the future. (We can all listItem.button, etc.)  

**appendTo**  
The below code adds an item (a piece of code) to the class #list-one on the HTML page. This is what we call minupulating the DOM. We are changing the bowsers representation of what the page looks like.  

```javascript
listItem.appendTo($('#list-one'));
```

**Remove function**  
This function calls on the remove class, and tells us that when that button is clicked we should remove it's parent (the class above it in the DOM).  

```javascript 
$('.remove').on('click', function() {
  $(this).parent().remove();
});
```

**body tag**  

```javascript
$('body').on('click', add, addToDo);
$('body').on('click', checkbox, complete);
$('body').on('click', '.delete', deleteToDo);
```

**parent**  

The DOM is hierachical. `<div>` is a child of `<body>`.  
A div inside of a div...

		<div id=1> 
			<div id=2> "things" </div>
		</div>

div2 is a child of div1.  










