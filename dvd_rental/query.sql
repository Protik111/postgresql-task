-- Level 1
-- 👉 Goal: get comfortable with SELECT, WHERE, ORDER BY, LIMIT
SELECT * FROM film;

SELECT title, rental_rate FROM film;

SELECT * FROM film WHERE rental_rate > 4;

SELECT * FROM film WHERE release_year = 2006;

SELECT first_name, last_name FROM customer;

SELECT * FROM customer WHERE first_name = 'MARY';

SELECT * FROM film ORDER BY length DESC;

SELECT * FROM film ORDER BY length DESC LIMIT 5;


-- Level 2
-- 👉 Goal: AND, OR, IN, BETWEEN, LIKE
SELECT title, rental_rate FROM film WHERE rental_rate BETWEEN 2 AND 4;

SELECT title, rating FROM film WHERE rating = 'PG' OR rating = 'PG-13';

SELECT title FROM film WHERE title LIKE 'A%';

SELECT title FROM film WHERE title LIKE ('%Love%');

SELECT last_name FROM customer WHERE last_name LIKE '%SON';

SELECT title, rental_rate, length 
FROM film 
WHERE length > 120 AND rental_rate > 3;


-- Level 3
--👉 Goal: COUNT, SUM, AVG, GROUP BY, HAVING
SELECT COUNT(*) FROM film;

SELECT avg(rental_rate) AS rate
FROM film;

SELECT rating, COUNT(*) AS total_films 
FROM film
GROUP BY rating;

SELECT max(length), min(length) FROM film;

SELECT rental_rate, COUNT(*) AS total_films
FROM film
GROUP BY rental_rate;

SELECT rating, COUNT(*) AS total_films
FROM film
GROUP BY rating
HAVING COUNT(*) > 200


--LEVEL 4 — Basic JOINs (Core Skill)
--👉 Goal: understand how tables connect
SELECT title, name 
FROM film f
INNER JOIN language l
ON f.language_id = l.language_id;

SELECT first_name, last_name, address
FROM customer c
INNER JOIN address ad
ON c.address_id = ad.address_id

SELECT c.first_name, c.last_name, ct.city, cn.country
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country cn ON ct.country_id = cn.country_id

SELECT s.store_id, sf.first_name, sf.last_name 
FROM store s
JOIN staff sf
ON s.manager_staff_id = sf.store_id;

SELECT f.title, COUNT(i.inventory_id) AS num_copies
FROM inventory i 
JOIN film f ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY f.title;
