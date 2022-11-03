use sakila;
#1. what last names are not repeated
SELECT last_name
FROM actor
GROUP BY last_name
HAVING count(last_name) = 1;

#2. Which last names appear more than once
SELECT last_name
FROM actor
GROUP BY last_name
HAVING count(last_name) > 1;

#3. Using the rental table, find out how many rentals were processed by each employee.
SELECT count(staff_id)
FROM rental
GROUP BY staff_id;

#4. Using the film table, find out how many films there are of each rating.
SELECT rating, count(film_id)
FROM film 
GROUP BY rating;

#5. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT round(avg(length), 2) as len, rating
FROM film
GROUP BY rating;

#6. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating
FROM film 
GROUP BY rating
HAVING avg(length) > 120;



