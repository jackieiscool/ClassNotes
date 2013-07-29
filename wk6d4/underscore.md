#Underscore.js

Underscore.js is a javascript library. Underscore helps developers with data manipulation.  

Displaying each number from an array.  

In pure javascript:  

		var arr = [1, 2, 3, 4, 5];

		for (var i=0, i < arr.length, i++) {
			console.log(arr[i]);
		}

In underscore:  

		var result = _.filter(arr, function(n) { return n > 3 } );

		console.log(result);

Or...  

		var result = _.map(arr, function(n) { return n*5 } );

In the same way we start jQuery functions with a `$` we start underscore functions with an underscore `_`  

In underscore we have a `pluck` function. It is awesome.  

		var albums = [
	    {'name': 'Gossamer', 'artist': 'Passion Pit'},
	    {'name': 'Sigh no more', 'artist': 'Mumford and Sons'},
	    {'name': 'Time to Pretend', 'artist': 'MGMT'}
		];

		

