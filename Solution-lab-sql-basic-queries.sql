# 1. Display all available tables in the Sakila database. 
use sakila; show tables;
# 2. Retrieve all the data from the tables actor, film and customer. 
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;
# 3. Retrieve the following columns from their respective tables. 
# 3.1 Titles of all films from the film table 
select title from sakila.film;
# 3.2 List of languages used in films, with the column aliased as language from the language table 
select name as language from sakila.language;
# 3.3 List of first names of all employees from the staff table 
select first_name from sakila.staff;
# 4. Retrieve unique release years. 
select distinct release_year from sakila.film; 
# 5. Counting records for database insights. 
# 5.1 Determine the number of stores that the company has. 
select count(*) from sakila.store;
# 5.2 Determine the number of employees that the company has. 
select count(*) from sakila.staff;
# 5.3 Determine how many films are available for rent and how many have been rented. 
select count(*) as for_rent from sakila.inventory;
select count(*) from (select distinct inventory_id from sakila.rental) as subquery;
# 5.4 Determine the number of distinct last names of the actors in the database. 
select count(*) from (select distinct last_name from sakila.actor) as subquery;
# 6. Retrieve the 10 longest films. 
select * from sakila.film order by length desc limit 10; 
# 7. Use filtering techniques in order to: 
# 7.1 Retrieve all actors with the first name "SCARLETT". 
select * from sakila.actor where first_name = "SCARLETT";
# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from sakila.film where (title like "%ARMAGEDDON%" and length > 100);
# 7.3 Determine the number of films that include Behind the Scenes content 
select count(*) from sakila.film where special_features like "%behind the scenes%";