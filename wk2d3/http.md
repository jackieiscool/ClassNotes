#HTTP

###Cloud
- A marketing term that means anything to do with the internet
- or A series of wires, computers, servers, and connections that allow us to transfer information


This is what a request looks like...

		GET /images/yahoo_smiley.gif HTTP/1.1
		Host: localhost:3000
		Connection: keep-alive
		Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
		User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36
		Accept-Encoding: gzip,deflate,sdch
		Accept-Language: en-US,en;q=0.8

The request includes things like language, and encoding so it knows what kind of information to send back.  

A Request looks similar whether it is sent or received.

