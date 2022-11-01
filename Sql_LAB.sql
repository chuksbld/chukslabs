#2. Select all columns from each table for your client.
SHOW COLUMNS FROM sakila.customer;

#3. Select one column from a table. Get film titles.
SELECT title
FROM sakila.film_text;

#4. Select one column from a table and alias it. 
SELECT title as 'film name'
FROM sakila.film_text;

#4.1 Get unique list of film languages under the alias language.
SELECT DISTINCT(name)
FROM sakila.language;

#5.1 Find out how many stores does the company have?
SELECT COUNT(store_id)
FROM sakila.store;

#5.2 Find out how many employees staff does the company have?
SELECT COUNT(staff_id)
FROM sakila.staff;

#5.3 Return a list of employee first names only?
SELECT first_name
FROM sakila.staff;


