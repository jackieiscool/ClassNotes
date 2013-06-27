##Databases

*"The point of the backend is to store and manipulate data."*  

**What does database mean?**  

- Anything that does CRUD is a database.  
	- (Create, Read, Update, Destroy)  
- Anything that stores data.


**What are some types of databases?**  
- Key/Value
- Relational
- JSON
- SQL
- XML
- Spreadsheet (csv)

**Brands:** Mongo, SQLite, Postgres, Couch, BerkleyDB , Oracle  

*"Apache graveyard is where open source projects go to die."*  

##SQL: Structured Query Language

**CRUD**  

maps to  

**INSERT, SELECT, UPDATE, DELETE**  

- SQL has Classes called Tables (a table is a sheet / csv)
- Arrays == result set (several rows)
- Hash (instance) == row
- keys (or symbols) == field names
- values (properties, attributes) == fields

Example models:  
		Movies
		- Title
		- Rating

		Reviews
		- Description
		- Movie_id (this is the id of the movie it belongs to)

#### SQL Statements

How to create a table:  

		CREATE TABLE table_name
		(
		column_name1 data_type(size),
		column_name2 data_type(size),
		column_name3 data_type(size),
		....
		);

Example:

		CREATE TABLE movies (
			id INTEGER PRIMARY KEY AUTOINCREMENT,
			title TEXT,
			desc TEXT,
			rating INTEGER
		);

How to select from a table:  

This will select all the information from the movies table.  

		SELECT * FROM movies;

This will select the titles from movies table where the rating is greater than 5. 

		SELECT title from movies WHERE rating > 5;

How to insert info into a table:  

		INSERT INTO movies (title, rating)
		VALUES ("Batman Begins", 10);

**List of Commands:**  
SELECT  
INSERT INTO  
WHERE  
DISTINCT  
UPDATE  
DELETE  
TRUNCATE TABLE  
ORDER BY  
GROUP BY  
HAVING  
AND & OR  
JOIN  
UNION  

**Some good resources to look up SQL commands:**  
*http://www.cheat-sheets.org/saved-copy/sqlcheetsheet.gif*  
*http://www.sql-tutorial.net/SQL-Cheat-Sheet.pdf*  
*http://www.cs.utexas.edu/~mitra/csFall2012/cs329/lectures/sql.html*  
*http://www.sqlcommands.net/sql+insert/*  


### Schema

**Shema is the structure of the database**  
- Schema is all the tables in the database and how they relate to each other.
- When we do modeling for databases we are designing the database schema. 
- Here's an awesome tool to help design your schema http://ondras.zarovi.cz/sql/demo/

####Schema Relationships

These are some of the relationship options:  
- has_many
- has_one
- belongs_to
- has_many_through (not a direct relationship)

Tables cannot have many to many relationships.  
This is where JOIN tables and has_many_through relationships come in.










