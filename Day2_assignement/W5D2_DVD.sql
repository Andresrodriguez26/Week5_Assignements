-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT *
FROM actor
WHERE last_name = 'Wahlberg' --ANSWER = 2

-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99; -- ANSWER = 5067

-- 3. What film does the store have the most of? (search in inventory)

SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;-- ANSWER: There are multiple films that are 8 times

-- 4. How many customers have the last name ‘William’?

SELECT *
FROM customer
WHERE last_name = 'William' -- ANSWER: There are no customers with that last name

-- 5. What store employee (get the id) sold the most rentals?

SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id; -- ANSWER: Employee ID 1 with 8040 rentals

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT(district)) as unique_districts
FROM address; -- ANSWER = There are 378 different distric names

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(film_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(customer_id)
FROM customer
WHERE store_id = 1 AND last_name  LIKE '%es'; -- ANSWER = There are 13 customers 

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals
-- above 250 for customers with ids between 380 and 430? (use group by and 
-- having > 250)

SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250; -- ANSWER = There are 3 payment amounts with 
							-- these conditions.

--10. Within the film table, how many rating categories are there? 
-- And what rating has the most movies total?

SELECT COUNT(rating) as Movies_With_Rating, rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC; -- ANSWERS = There are 5 ratings in total and the
							 -- one that has the most is PG-13 with 223 movies.



