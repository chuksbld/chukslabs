#1. Which actor has appeared in the most films?
SELECT a.first_name, a.last_name, count(f.film_id) as counts
FROM actor a
JOIN film_actor f USING(actor_id)
GROUP BY actor_id
ORDER BY counts DESC
LIMIT 1;


#2. Most active customer (the customer that has rented the most number of films)
SELECT c.first_name, c.last_name, count(r.rental_id) as counts
FROM customer c
JOIN rental r USING(customer_id)
GROUP BY customer_id
ORDER BY counts DESC
LIMIT 1;

#3. List number of films per category
SELECT c.name, count(fc.film_id)
FROM category c
JOIN film_category fc USING(category_id)
GROUP BY category_id;

#4. Display the first and last names, as well as the address, of each staff member.
SELECT s.first_name, s.last_name, a.address
FROM staff s
JOIN address a USING(address_id);

#5. get films titles where the film language is either English or italian, 
#and whose titles starts with letter "M" , sorted by title descending.
SELECT f.title, l.name
FROM film f 
JOIN language l USING(language_id)
WHERE f.title LIKE 'M%'
ORDER BY f.title DESC;

#6.Display the total amount rung up by each staff member in August of 2005.
SELECT s.first_name, s.last_name, sum(p.amount)
FROM staff s
JOIN payment p USING(staff_id)
WHERE p.payment_date BETWEEN '2005-08-01 00:00:00' and '2005-08-01 23:59:59'
GROUP BY s.first_name;

#7. List each film and the number of actors who are listed for that film.
SELECT f.title, count(fa.actor_id) as count
FROM film f
JOIN film_actor fa USING(film_id)
GROUP BY f.title
ORDER BY count DESC;

#8. Using the tables payment and customer and the JOIN command, 
#list the total paid by each customer. List the customers alphabetically by last name.

SELECT c.first_name, c.last_name, sum(p.amount)
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY customer_id
ORDER BY c.last_name;

#9. Write sql statement to check if you can find any actor who never particiapted in any film.
SELECT a.first_name, a.last_name
FROM actor a
LEFT JOIN film_actor f USING(actor_id)
WHERE f.actor_id IS NULL;


#10. get the addresses that has NO customers, and ends with the letter "e"
SELECT a.address
FROM customer c
RIGHT JOIN address a USING(address_id)
WHERE a.address LIKE '%e' AND c.address_id IS  NULL;

#Optional: what is the most rented film?
SELECT f.title
FROM rental r
		 JOIN inventory i USING (inventory_id)
		 JOIN film f USING (film_id)
GROUP BY f.title
HAVING count(inventory_id) > 33;
