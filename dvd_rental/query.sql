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