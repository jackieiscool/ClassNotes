#Javascript

###Resources
MDN (Mozilla Developer Network) has the official javascript documentation.  
https://developer.mozilla.org/en-US/docs/Web/JavaScript  

**Install Instructions**  
https://gist.github.com/coolaj86/5889096  

*Ignore all "warnings" you get, but not errors. Warnings will say "warning" before them.  

```javascript

console.log("hello world!");

```
`console.log` is the javascript version of print. It will print this/log things to your console.  

Javascript is similar to ruby when you are looking at literals.  

```javascript

var i = 4,
str = "hello world",
arr = [2, 4, 19, 3],
obj = { awesome: "Megan", wayAwesome: "Brian"};

console.log("number", i);
console.log("string", str);
console.log("array", arr);
console.log('object', obj);

```

run in your terminal...

		node my_file.js 

You should get... 

		hello world
		number 4
		string hello world
		array [ 2, 4, 19, 3 ]
		object { awesome: 'Megan', wayAwesome: 'Brian' }

At the top of each file you should have...  

```javascript
function main() {
	"use strict";
}
````
and at the end of the file call the function `main();`  

`"use strict";` is only for the main function. This prevents you from having variables flying around.  

##Viewing javscript files in browser

- Go to localhost/your_path
- click on the little button on the right
- go to tool, and then javascript console *this will allow you to play with/debug your javascript in the console.


##Nested Functions

*Whoa dawg! I like functions so much I put a function in my function!*  

In javascript you can always access variables that are above a function in scope. i.e. If you have function1 and then function2 is inside it, function2 can access all of the variable in function1.

```javascript
<!-- parens () and brackets {} are required in javascript -->

function sorter(a, b) {
	if (a > b) {
		return 1;
	} else {
		return -1;
	}
}

console.log("sorter", sorter(3, 5));

<!-- return is also not optional and ';' is required to close things. -->

arr = [11, 42, 2, 37];

arr.sort(sorter)
```

In javascript you can pass in a function to another function.  
The first function will then execute inside another function.    

```javascript
function printToConsole(el, i) {
	console.log(el, i);
}

printToConsole("hello", "world");
arr.forEach(printToConsole);

```

**Order of arguments matter in javascript.**  

		function printToConsole(el, i, thisArray)
			console.log(i);
		}

You will get a warning because you are not using thisArray. It will understand that you just have 'el' in order to get to 'i'.





