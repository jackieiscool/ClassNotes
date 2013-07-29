// Execute a function multiple times between a delay;; 
// window.setInterval(function_name, delaymilliseconds)
// window.clearInterval(SETINTERVALOBJECT)

// Execute a function after a certain period
// window.setTimeout
// window.clearTimeout

// document.getElementsByTagName('img');

function makeImageBigger() {
	var mattDamon = document.getElementsByTagName('img')[0];
	mattDamon.setAttribute('width', mattDamon.width + 10);

		if (mattDamon.width > 300){
			window.clearInterval(bigTimer);
		}
}

var bigTimer = window.setInterval(makeImageBigger, 1000);
console.log(bigTimer)