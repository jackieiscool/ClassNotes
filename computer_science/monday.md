## Base 10 & Base 2 (Binary)

Base 10 comsists of 10 numbers:  
 
0 1 2 3 4 5 6 7 8 9  

These are all the numbers we need to create all other numbers  

Base 2 only has two numbers  

0 1  

Why do computers use base 2? Why would you store less information?  
Computers use Base 2 because of circuitry. Everything is done in on off signals.  

What else uses binary?  
- Electrical systems  
- Morse code  
- Smoke signals  

Using Base 10 how many numbers can we store with 2 places?  

10 ^ 2 = 100  

With 3 places?  

10 ^ 3 = 1000  

How many numbers can we store with 2 places in binary?  

00 -> 0  

01 -> 1  

10 -> 2  

And with 3 places?  

000 -> 0  
001 -> 1  
010 -> 2  
011 -> 3  
100 -> 4  
101 -> 5  
110 -> 6  
111 -> 7  

What is the biggest number you can represent with 4 places?  

15  

And the smallest number is 0, so 16 numbers can be represented.  

2 ^ 4 = 16  

**How do we convert binary to decimal?**  

*Binary: 1011*  

1 0 1 1  
_______  
8 4 2 2  

1 * 1 = 1  
2 * 1 = 2  
0 * 4 = 0  
1 * 8 = 8  

1 + 2 + 0 + 8 = 11  


## Hexidecimal

0000 - 0  
0001 - 1  
0010 - 2  
0011 - 3  
0100 - 4  
0101 - 5  
0110 - 6  
0111 - 7  
1000 - 8  
1001 - 9  
1010 - A  
1011 - B  
1100 - C  
1101 - D  
1110 - E  
1111 - F  

**A2**  
A = 1010  
2 = 0010  
8 bits, 1 byte  

```ruby
	
	def self.decimal_to_hexidecimal(decimal)
		a = decimal.split("")
		h = { "a" => "1010" }
		r = ""
		a.each do |n|
			r += h[n]
		end
		r
	end
```


