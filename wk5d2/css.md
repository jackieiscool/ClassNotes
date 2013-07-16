##CSS

**Fluid vs Responsive design**  

Fluid design just uses percentages so that containers always take up a certain amount of a window.  

Reponsive design would do something like making a container 60% of the window, until the window is over 1200px, and then do something else.  


		section {
			background: white;
			padding: 30px;
			margin-top: 40px;
			margin-bottom: 40px; // This allows a different margin for top/bottom then right/left
		}

**Hierarchy of CSS**  

This will not work because we've already assigned blue to the individual elements in this li

		header nav li {
			color: white;
		}

We can do the following and target the a tags specifically.  

		header a {
			color: white;
		}


**box shadow**  

		box-shadow: inset: 0 1px 0 rgba(255, 255, 255, 0.0)  


**text shadow**  

		header {
			text-decoration: none;
			text-shadow: 0 1px 0 rgba(0, 0, 0, 0.7)
		}

