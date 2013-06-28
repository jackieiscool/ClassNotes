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

**Showing what a table is comprised of**  

		sqlite> .schema products
				CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "name" varchar(255), "price" float, "on_sale" boolean DEFAULT 'f' NOT NULL);

**How to create a table:**  

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

**How to select from a table:**  

This will select all the information from the movies table.  

		SELECT * FROM movies;

This will select the titles from movies table where the rating is greater than 5. 

		SELECT title from movies WHERE rating > 5;

**How to insert info into a table:**  

		INSERT INTO movies (title, rating)
		VALUES ("Batman Begins", 10);

**Selecting a column from a table**

		sqlite> select name from products;
		Teddy Bear
		Lonely Pil

**Showing the contents of a whole table * **

		sqlite> select * from products;
		1           2013-04-01 20:09:41.969902  Teddy Bear  17.99       f
		2           2013-04-01 20:09:41.972179  Lonely Pil  78.82       t

*Limiting the results

		sqlite> select name, price from products where price > 10 order by price limit 3;

Limiting and Offset

		sqlite> SELECT name, price FROM products ORDER BY price DESC LIMIT 3 OFFSET 3;

Max Price

		sqlite> select MAX(price) FROM products;
		MAX(price)
		----------
		99.99

Min Price

		sqlite> select MIN(price) FROM products;
		MIN(price)
		----------
		6.22

Grouping

		sqlite> SELECT on_sale, COUNT(price), MIN(price), MAX(price) FROM products GROUP BY on_sale;
		on_sale     COUNT(price)  MIN(price)  MAX(price)
		----------  ------------  ----------  ----------
		f           4             6.22        99.99
		t           6             10.99       82.0


		sqlite> select AVG(price) FROM products WHERE price < 100;
		AVG(price)
		----------
		38.899


Selecting from multiple tables on a column

		sqlite> select name, user_id from products, wishlists where product_id = products.id limit 1;
		name        user_id
		----------  ----------
		Teddy Bear  13


assigning aliases to tables for joins

		sqlite> select p.name, w.* from products p, wishlists w where p.id = w.product_id limit 5;
		name        id          created_at                  user_id     product_id
		----------  ----------  --------------------------  ----------  ----------
		Teddy Bear  1           2013-04-01 20:09:41.992086  13          1
		Teddy Bear  2           2013-04-01 20:09:41.994331  20          1
		

		sqlite> select p.name, u.name from products as p, wishlists as w, users as u where p.id = w.product_id and w.user_id = u.id;


Inserting

		insert into products ('name', 'price') values ('Dress Shirt', '65.00');


Updating

		Update products SET price = 35 where id = 8;

Show the results

		sqlite> select * from products where id = 8;
		id          created_at                  name        price       on_sale
		----------  --------------------------  ----------  ----------  ----------
		8           2013-04-01 20:09:41.981864  Hoodie      35.0        t

Deleting

		delete from products where id = 1;


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










