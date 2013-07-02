##Homework Review

**Where did we start?**  

- declaring variables
- getting program to work with static word first before approaching the whole problem.  
- ask yourself, what is the simplest thing?  
- start with writing some psuedo code.  

```javascript
var answer = "watermelon",
splitAnswer,
copy,
letter;

splitAnswer = answer.split('');
console.log(splitAnswer);

for (i = 0; i < splitAnswer.length; i += 1) {
	// need same length string, but blanked out
	copy.push('_');
	// code
}

// fill in the blanks of the copy

for (i=0; i < splitAnswer.length; i += 1) {
	letter = splitAnswer[i];
	if (letter === guess) {
		// copy just one letter
		copy[i] = letter;
	}
}

```

###Importance of 'Debugging'

Everytime a program does something you don't expect put a console.log on every line, one at a time.  
Now you can find where the program is doing something you didn't expect.  


